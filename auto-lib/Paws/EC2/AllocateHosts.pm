
package Paws::EC2::AllocateHosts;
  use Moose;
  has AutoPlacement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoPlacement' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType' , required => 1);
  has Quantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'quantity' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AllocateHostsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateHosts - Arguments for method AllocateHosts on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateHosts on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method AllocateHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateHosts.

As an example:

  $service_obj->AllocateHosts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AutoPlacement => Str

  This is enabled by default. This property allows instances to be
automatically placed onto available Dedicated hosts, when you are
launching instances without specifying a host ID.

Default: Enabled


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone for the Dedicated hosts.


=head2 ClientToken => Str

  Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see How to Ensure Idempotency in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 B<REQUIRED> InstanceType => Str

  Specify the instance type that you want your Dedicated hosts to be
configured for. When you specify the instance type, that is the only
instance type that you can launch onto that host.


=head2 B<REQUIRED> Quantity => Int

  The number of Dedicated hosts you want to allocate to your account with
these parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

