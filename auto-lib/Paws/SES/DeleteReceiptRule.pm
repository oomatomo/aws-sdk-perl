
package Paws::SES::DeleteReceiptRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReceiptRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteReceiptRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReceiptRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteReceiptRule - Arguments for method DeleteReceiptRule on Paws::SES

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReceiptRule on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method DeleteReceiptRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReceiptRule.

As an example:

  $service_obj->DeleteReceiptRule(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

  The name of the receipt rule to delete.


=head2 B<REQUIRED> RuleSetName => Str

  The name of the receipt rule set that contains the receipt rule to
delete.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReceiptRule in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

