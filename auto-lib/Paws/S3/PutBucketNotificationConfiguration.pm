
package Paws::S3::PutBucketNotificationConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::S3::NotificationConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  

=head2 B<REQUIRED> NotificationConfiguration => L<Paws::S3::NotificationConfiguration>

  


=cut

