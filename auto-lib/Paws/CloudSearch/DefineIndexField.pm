
package Paws::CloudSearch::DefineIndexField;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Paws::CloudSearch::IndexField', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DefineIndexFieldResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineIndexField - Arguments for method DefineIndexField on Paws::CloudSearch

=head1 DESCRIPTION

This class represents the parameters used for calling the method DefineIndexField on the 
Amazon CloudSearch service. Use the attributes of this class
as arguments to method DefineIndexField.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DefineIndexField.

As an example:

  $service_obj->DefineIndexField(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

  


=head2 B<REQUIRED> IndexField => L<Paws::CloudSearch::IndexField>

  The index field and field options you want to configure.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DefineIndexField in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

