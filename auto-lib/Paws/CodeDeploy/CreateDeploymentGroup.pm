
package Paws::CodeDeploy::CreateDeploymentGroup;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'autoScalingGroups' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' , required => 1);
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', traits => ['NameInRequest'], request_name => 'ec2TagFilters' );
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'onPremisesInstanceTagFilters' );
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroup - Arguments for method CreateDeploymentGroup on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentGroup on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method CreateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentGroup.

As an example:

  $service_obj->CreateDeploymentGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

  The name of an existing AWS CodeDeploy application associated with the
applicable IAM user or AWS account.


=head2 AutoScalingGroups => ArrayRef[Str]

  A list of associated Auto Scaling groups.


=head2 DeploymentConfigName => Str

  If specified, the deployment configuration name must be one of the
predefined values, or it can be a custom deployment configuration:

=over

=item * CodeDeployDefault.AllAtOnce deploys an application revision to
up to all of the instances at once. The overall deployment succeeds if
the application revision deploys to at least one of the instances. The
overall deployment fails after the application revision fails to deploy
to all of the instances. For example, for 9 instances, deploy to up to
all 9 instances at once. The overall deployment succeeds if any of the
9 instances is successfully deployed to, and it fails if all 9
instances fail to be deployed to.

=item * CodeDeployDefault.HalfAtATime deploys to up to half of the
instances at a time (with fractions rounded down). The overall
deployment succeeds if the application revision deploys to at least
half of the instances (with fractions rounded up); otherwise, the
deployment fails. For example, for 9 instances, deploy to up to 4
instances at a time. The overall deployment succeeds if 5 or more
instances are successfully deployed to; otherwise, the deployment
fails. Note that the deployment may successfully deploy to some
instances, even if the overall deployment fails.

=item * CodeDeployDefault.OneAtATime deploys the application revision
to only one of the instances at a time. The overall deployment succeeds
if the application revision deploys to all of the instances. The
overall deployment fails after the application revision first fails to
deploy to any one instances. For example, for 9 instances, deploy to
one instance at a time. The overall deployment succeeds if all 9
instances are successfully deployed to, and it fails if any of one of
the 9 instances fail to be deployed to. Note that the deployment may
successfully deploy to some instances, even if the overall deployment
fails. This is the default deployment configuration if a configuration
isn't specified for either the deployment or the deployment group.

=back

To create a custom deployment configuration, call the create deployment
configuration operation.


=head2 B<REQUIRED> DeploymentGroupName => Str

  The name of an existing deployment group for the specified application.


=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

  The Amazon EC2 tags to filter on.


=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

  The on-premises instance tags to filter on.


=head2 B<REQUIRED> ServiceRoleArn => Str

  A service role ARN that allows AWS CodeDeploy to act on the user's
behalf when interacting with AWS services.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

