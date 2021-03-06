
package Paws::EC2::DetachVolume;
  use Moose;
  has Device => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Force => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::VolumeAttachment');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DetachVolume - Arguments for method DetachVolume on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachVolume on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DetachVolume.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachVolume.

As an example:

  $service_obj->DetachVolume(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Device => Str

  The device name.


=head2 DryRun => Bool

  Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.


=head2 Force => Bool

  Forces detachment if the previous detachment attempt did not occur
cleanly (for example, logging into an instance, unmounting the volume,
and detaching normally). This option can lead to data loss or a
corrupted file system. Use this option only as a last resort to detach
a volume from a failed instance. The instance won't have an opportunity
to flush file system caches or file system metadata. If you use this
option, you must perform file system check and repair procedures.


=head2 InstanceId => Str

  The ID of the instance.


=head2 B<REQUIRED> VolumeId => Str

  The ID of the volume.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachVolume in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

