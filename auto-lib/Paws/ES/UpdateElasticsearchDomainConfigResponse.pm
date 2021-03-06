
package Paws::ES::UpdateElasticsearchDomainConfigResponse;
  use Moose;
  has DomainConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchDomainConfig', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateElasticsearchDomainConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfig => L<Paws::ES::ElasticsearchDomainConfig>

  The status of the updated Elasticsearch domain.


=cut

