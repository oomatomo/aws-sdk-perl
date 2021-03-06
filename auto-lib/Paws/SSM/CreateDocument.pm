
package Paws::SSM::CreateDocument;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateDocumentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateDocument - Arguments for method CreateDocument on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocument on the 
Amazon Simple Systems Management Service service. Use the attributes of this class
as arguments to method CreateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocument.

As an example:

  $service_obj->CreateDocument(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

  A valid JSON string. For more information about the contents of this
string, see SSM Document.


=head2 B<REQUIRED> Name => Str

  A name for the SSM document.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocument in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

