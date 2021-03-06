
package Paws::Glacier::ArchiveCreationOutput;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str');
  has Checksum => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ArchiveCreationOutput

=head1 ATTRIBUTES


=head2 ArchiveId => Str

  The ID of the archive. This value is also included as part of the
location.

=head2 Checksum => Str

  The checksum of the archive computed by Amazon Glacier.

=head2 Location => Str

  The relative URI path of the newly added archive resource.


=cut

