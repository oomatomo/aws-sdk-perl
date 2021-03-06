package Paws::Inspector::LocalizedTextKey;
  use Moose;
  has Facility => (is => 'ro', isa => 'Str', xmlname => 'facility', request_name => 'facility', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::LocalizedTextKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::LocalizedTextKey object:

  $service_obj->Method(Att1 => { Facility => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::LocalizedTextKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Facility

=head1 DESCRIPTION

This data type is used in the LocalizedText data type.

=head1 ATTRIBUTES


=head2 Facility => Str

  The module response source of the text.


=head2 Id => Str

  Part of the module response source of the text.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

