
package Paws::EC2::CreateSubnet;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubnet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateSubnetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSubnet - Arguments for method CreateSubnet on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubnet on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CreateSubnet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubnet.

As an example:

  $service_obj->CreateSubnet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone for the subnet.

Default: AWS selects one for you. If you create more than one subnet in
your VPC, we may not necessarily select a different zone for each
subnet.


=head2 B<REQUIRED> CidrBlock => Str

  The network range for the subnet, in CIDR notation. For example,
C<10.0.0.0/24>.


=head2 DryRun => Bool

  Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.


=head2 B<REQUIRED> VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubnet in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

