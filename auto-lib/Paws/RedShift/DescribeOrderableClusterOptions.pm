
package Paws::RedShift::DescribeOrderableClusterOptions;
  use Moose;
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::OrderableClusterOptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeOrderableClusterOptions - Arguments for method DescribeOrderableClusterOptions on Paws::RedShift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrderableClusterOptions on the 
Amazon Redshift service. Use the attributes of this class
as arguments to method DescribeOrderableClusterOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrderableClusterOptions.

As an example:

  $service_obj->DescribeOrderableClusterOptions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClusterVersion => Str

  The version filter value. Specify this parameter to show only the
available offerings matching the specified version.

Default: All versions.

Constraints: Must be one of the version returned from
DescribeClusterVersions.


=head2 Marker => Str

  An optional parameter that specifies the starting point to return a set
of response records. When the results of a
DescribeOrderableClusterOptions request exceed the value specified in
C<MaxRecords>, AWS returns a value in the C<Marker> field of the
response. You can retrieve the next set of response records by
providing the returned marker value in the C<Marker> parameter and
retrying the request.


=head2 MaxRecords => Int

  The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<100>

Constraints: minimum 20, maximum 100.


=head2 NodeType => Str

  The node type filter value. Specify this parameter to show only the
available offerings matching the specified node type.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrderableClusterOptions in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

