package Paws::SES::SNSAction;
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SNSAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::SNSAction object:

  $service_obj->Method(Att1 => { TopicArn => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::SNSAction object:

  $result = $service_obj->Method(...);
  $result->Att1->TopicArn

=head1 DESCRIPTION

When included in a receipt rule, this action publishes a notification
to Amazon Simple Notification Service (Amazon SNS). This action
includes a complete copy of the email content in the Amazon SNS
notifications. Amazon SNS notifications for all other actions simply
provide information about the email. They do not include the email
content itself.

If you own the Amazon SNS topic, you don't need to do anything to give
Amazon SES permission to publish emails to it. However, if you don't
own the Amazon SNS topic, you need to attach a policy to the topic to
give Amazon SES permissions to access it. For information about giving
permissions, see the Amazon SES Developer Guide.

You can only publish emails that are 150 KB or less (including the
header) to Amazon SNS. Larger emails will bounce. If you anticipate
emails larger than 150 KB, use the S3 action instead.

For information about using a receipt rule to publish an Amazon SNS
notification, see the Amazon SES Developer Guide.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An
example of an Amazon SNS topic ARN is
C<arn:aws:sns:us-west-2:123456789012:MyTopic>. For more information
about Amazon SNS topics, see the Amazon SNS Developer Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

