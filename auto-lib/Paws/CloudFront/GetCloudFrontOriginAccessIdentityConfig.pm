
package Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfig;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCloudFrontOriginAccessIdentityConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-07-27/origin-access-identity/cloudfront/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetCloudFrontOriginAccessIdentityConfigResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The identity's id.


=cut

