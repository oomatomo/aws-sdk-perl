package Paws::CloudFront;
  warn "Paws::CloudFront is not stable / supported / entirely developed";
  use Moose;
  sub service { 'cloudfront' }
  sub version { '2015-07-27' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestXmlCaller', 'Paws::Net::RestXMLResponse';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'notStartsWith',
          'cn-'
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => 'https://cloudfront.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub CreateCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::CreateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::DeleteStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFrontOriginAccessIdentityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetDistributionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvalidation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetInvalidation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStreamingDistributionConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::GetStreamingDistributionConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCloudFrontOriginAccessIdentities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListCloudFrontOriginAccessIdentities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionsByWebACLId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListDistributionsByWebACLId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvalidations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListInvalidations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamingDistributions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::ListStreamingDistributions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCloudFrontOriginAccessIdentity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamingDistribution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFront::UpdateStreamingDistribution', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/CreateCloudFrontOriginAccessIdentity CreateDistribution CreateInvalidation CreateStreamingDistribution DeleteCloudFrontOriginAccessIdentity DeleteDistribution DeleteStreamingDistribution GetCloudFrontOriginAccessIdentity GetCloudFrontOriginAccessIdentityConfig GetDistribution GetDistributionConfig GetInvalidation GetStreamingDistribution GetStreamingDistributionConfig ListCloudFrontOriginAccessIdentities ListDistributions ListDistributionsByWebACLId ListInvalidations ListStreamingDistributions UpdateCloudFrontOriginAccessIdentity UpdateDistribution UpdateStreamingDistribution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront - Perl Interface to AWS Amazon CloudFront

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudFront');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



=head1 METHODS

=head2 CreateCloudFrontOriginAccessIdentity2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentity2015_07_27>

Returns: nothing

  


=head2 CreateDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::CreateDistribution2015_07_27>

Returns: nothing

  


=head2 CreateInvalidation2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::CreateInvalidation2015_07_27>

Returns: nothing

  


=head2 CreateStreamingDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::CreateStreamingDistribution2015_07_27>

Returns: nothing

  


=head2 DeleteCloudFrontOriginAccessIdentity2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::DeleteCloudFrontOriginAccessIdentity2015_07_27>

Returns: nothing

  


=head2 DeleteDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::DeleteDistribution2015_07_27>

Returns: nothing

  


=head2 DeleteStreamingDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::DeleteStreamingDistribution2015_07_27>

Returns: nothing

  


=head2 GetCloudFrontOriginAccessIdentity2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentity2015_07_27>

Returns: nothing

  


=head2 GetCloudFrontOriginAccessIdentityConfig2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig2015_07_27>

Returns: nothing

  


=head2 GetDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetDistribution2015_07_27>

Returns: nothing

  


=head2 GetDistributionConfig2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetDistributionConfig2015_07_27>

Returns: nothing

  


=head2 GetInvalidation2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetInvalidation2015_07_27>

Returns: nothing

  


=head2 GetStreamingDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistribution2015_07_27>

Returns: nothing

  


=head2 GetStreamingDistributionConfig2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::GetStreamingDistributionConfig2015_07_27>

Returns: nothing

  


=head2 ListCloudFrontOriginAccessIdentities2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::ListCloudFrontOriginAccessIdentities2015_07_27>

Returns: nothing

  


=head2 ListDistributions2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::ListDistributions2015_07_27>

Returns: nothing

  


=head2 ListDistributionsByWebACLId2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::ListDistributionsByWebACLId2015_07_27>

Returns: nothing

  


=head2 ListInvalidations2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::ListInvalidations2015_07_27>

Returns: nothing

  


=head2 ListStreamingDistributions2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::ListStreamingDistributions2015_07_27>

Returns: nothing

  


=head2 UpdateCloudFrontOriginAccessIdentity2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::UpdateCloudFrontOriginAccessIdentity2015_07_27>

Returns: nothing

  


=head2 UpdateDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::UpdateDistribution2015_07_27>

Returns: nothing

  


=head2 UpdateStreamingDistribution2015_07_27( => )

Each argument is described in detail in: L<Paws::CloudFront::UpdateStreamingDistribution2015_07_27>

Returns: nothing

  


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

