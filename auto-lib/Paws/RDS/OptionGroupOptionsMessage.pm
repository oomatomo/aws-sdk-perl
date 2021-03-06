
package Paws::RDS::OptionGroupOptionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroupOption]', xmlname => 'OptionGroupOption', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroupOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

  An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.

=head2 OptionGroupOptions => ArrayRef[L<Paws::RDS::OptionGroupOption>]

  


=cut

