
package Paws::Inspector::RegisterCrossAccountAccessRoleResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RegisterCrossAccountAccessRoleResponse

=head1 ATTRIBUTES


=head2 Message => Str

  Confirmation details of the action performed.


=cut

1;