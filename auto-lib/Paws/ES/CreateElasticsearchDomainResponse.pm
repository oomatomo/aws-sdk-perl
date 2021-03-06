
package Paws::ES::CreateElasticsearchDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainStatus');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateElasticsearchDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => L<Paws::ES::ElasticsearchDomainStatus>

  The status of the newly created Elasticsearch domain.


=cut

