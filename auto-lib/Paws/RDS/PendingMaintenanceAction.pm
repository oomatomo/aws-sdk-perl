package Paws::RDS::PendingMaintenanceAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has AutoAppliedAfterDate => (is => 'ro', isa => 'Str');
  has CurrentApplyDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ForcedApplyDate => (is => 'ro', isa => 'Str');
  has OptInStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PendingMaintenanceAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::PendingMaintenanceAction object:

  $service_obj->Method(Att1 => { Action => $value, ..., OptInStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::PendingMaintenanceAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Provides information about a pending maintenance action for a resource.

=head1 ATTRIBUTES


=head2 Action => Str

  The type of pending maintenance action that is available for the
resource.


=head2 AutoAppliedAfterDate => Str

  The date of the maintenance window when the action will be applied. The
maintenance action will be applied to the resource during its first
maintenance window after this date. If this date is specified, any
C<next-maintenance> opt-in requests are ignored.


=head2 CurrentApplyDate => Str

  The effective date when the pending maintenance action will be applied
to the resource. This date takes into account opt-in requests received
from the ApplyPendingMaintenanceAction API, the
C<AutoAppliedAfterDate>, and the C<ForcedApplyDate>. This value is
blank if an opt-in request has not been received and nothing has been
specified as C<AutoAppliedAfterDate> or C<ForcedApplyDate>.


=head2 Description => Str

  A description providing more detail about the maintenance action.


=head2 ForcedApplyDate => Str

  The date when the maintenance action will be automatically applied. The
maintenance action will be applied to the resource on this date
regardless of the maintenance window for the resource. If this date is
specified, any C<immediate> opt-in requests are ignored.


=head2 OptInStatus => Str

  Indicates the type of opt-in request that has been received for the
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

