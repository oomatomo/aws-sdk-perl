package Paws::RedShift::ClusterParameterGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterParameterGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterParameterGroup object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterParameterGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Describes a parameter group.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the parameter group.


=head2 ParameterGroupFamily => Str

  The name of the cluster parameter group family that this cluster
parameter group is compatible with.


=head2 ParameterGroupName => Str

  The name of the cluster parameter group.


=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

  The list of tags for the cluster parameter group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

