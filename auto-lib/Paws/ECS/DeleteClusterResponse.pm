
package Paws::ECS::DeleteClusterResponse;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::ECS::Cluster', traits => ['Unwrapped'], xmlname => 'cluster' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::ECS::Cluster>

  The full description of the deleted cluster.


=cut

1;