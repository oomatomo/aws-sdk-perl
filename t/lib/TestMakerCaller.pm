package TestMakerCaller {
  use Moose;
  extends 'Paws::Net::Caller';
  use Carp;
  use File::Slurper 'write_text';
  use YAML qw/DumpFile/;
  use Hash::Flatten qw//;

  override do_call => sub {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
    delete $headers->{Host};

    my $response = $self->ua->request(
      $requestObj->method,
      $requestObj->url,
      {
        headers => $headers,
        (defined $requestObj->content)?(content => $requestObj->content):(),
      }
    );

    my $test_file_name = 't/10_responses/' . $service->service . '-' . lc($call_object->_api_call . '.response');
    write_text($test_file_name, $response->{ content });
    print "Written response to $test_file_name\n";
    my $service_class = $service->meta->name;
    $service_class =~ s/Paws\:\://;
    my $test = { call => $call_object->_api_call, service => $service_class, tests => [] };
    DumpFile("${test_file_name}.test.yml", $test);
    print "Written test skeleton to ${test_file_name}.test.yml\n";

    my $unserialized_struct;
    if ( $response->{success} ) {
        $unserialized_struct = $service->unserialize_response( $response->{content} );
    } else {
        #TODO: retry or croak based on error codes
        croak "POST Request failed: $response->{status} $response->{reason} $response->{content}\n";
    }

    my $result = $service->response_to_object($unserialized_struct, $call_object);
    #TODO: build tests
    my $h = $service->to_hash($result);
    $h = Hash::Flatten::flatten($h, { HashDelimiter => '.', ArrayDelimiter => '.' });
    $test->{ tests } = [ map { { expected => $h->{ $_ }, op => 'eq', path => $_ } } keys %$h ];
    DumpFile("${test_file_name}.test.yml", $test);
    print "Written test case to ${test_file_name}.test.yml\n";
    return $result;
  };

}
