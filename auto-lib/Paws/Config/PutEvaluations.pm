
package Paws::Config::PutEvaluations;
  use Moose;
  has Evaluations => (is => 'ro', isa => 'ArrayRef[Paws::Config::Evaluation]');
  has ResultToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEvaluations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutEvaluationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutEvaluations - Arguments for method PutEvaluations on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEvaluations on the 
AWS Config service. Use the attributes of this class
as arguments to method PutEvaluations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEvaluations.

As an example:

  $service_obj->PutEvaluations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Evaluations => ArrayRef[L<Paws::Config::Evaluation>]

  The assessments that the AWS Lambda function performs. Each evaluation
identifies an AWS resource and indicates whether it complies with the
AWS Config rule that invokes the AWS Lambda function.


=head2 B<REQUIRED> ResultToken => Str

  An encrypted token that associates an evaluation with an AWS Config
rule. Identifies the rule and the event that triggered the evaluation



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEvaluations in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

