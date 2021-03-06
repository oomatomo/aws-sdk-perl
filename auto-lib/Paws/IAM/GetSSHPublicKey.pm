
package Paws::IAM::GetSSHPublicKey;
  use Moose;
  has Encoding => (is => 'ro', isa => 'Str', required => 1);
  has SSHPublicKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSSHPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetSSHPublicKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSSHPublicKeyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetSSHPublicKey - Arguments for method GetSSHPublicKey on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSSHPublicKey on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method GetSSHPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSSHPublicKey.

As an example:

  $service_obj->GetSSHPublicKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Encoding => Str

  Specifies the public key encoding format to use in the response. To
retrieve the public key in ssh-rsa format, use C<SSH>. To retrieve the
public key in PEM format, use C<PEM>.


=head2 B<REQUIRED> SSHPublicKeyId => Str

  The unique identifier for the SSH public key.


=head2 B<REQUIRED> UserName => Str

  The name of the IAM user associated with the SSH public key.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSSHPublicKey in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

