package Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes;
  use Moose;
  has ActivityId => (is => 'ro', isa => 'Str', xmlname => 'activityId', request_name => 'activityId', traits => ['Unwrapped','NameInRequest'], required => 1);
  has ActivityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', xmlname => 'activityType', request_name => 'activityType', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Cause => (is => 'ro', isa => 'Str', xmlname => 'cause', request_name => 'cause', traits => ['Unwrapped','NameInRequest'], required => 1);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => 'Int', xmlname => 'decisionTaskCompletedEventId', request_name => 'decisionTaskCompletedEventId', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes object:

  $service_obj->Method(Att1 => { ActivityId => $value, ..., DecisionTaskCompletedEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleActivityTaskFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityId

=head1 DESCRIPTION

Provides details of the C<ScheduleActivityTaskFailed> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityId => Str

  The activityId provided in the C<ScheduleActivityTask> decision that
failed.


=head2 B<REQUIRED> ActivityType => L<Paws::SimpleWorkflow::ActivityType>

  The activity type provided in the C<ScheduleActivityTask> decision that
failed.


=head2 B<REQUIRED> Cause => Str

  The cause of the failure. This information is generated by the system
and can be useful for diagnostic purposes.

If B<cause> is set to OPERATION_NOT_PERMITTED, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision that resulted in the scheduling of this activity task. This
information can be useful for diagnosing problems by tracing back the
chain of events leading up to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

