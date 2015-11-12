
package Paws::S3::PutObjectAcl;
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Paws::S3::AccessControlPolicy');
  has ACL => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-acl' );
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-MD5' );
  has GrantFullControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-full-control' );
  has GrantRead => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-read' );
  has GrantReadACP => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-read-acp' );
  has GrantWrite => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-write' );
  has GrantWriteACP => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-grant-write-acp' );
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Key' , required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-payer' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObjectAcl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectAclOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectAclOutput

=head1 ATTRIBUTES


=head2 AccessControlPolicy => L<Paws::S3::AccessControlPolicy>

  

=head2 ACL => Str

  The canned ACL to apply to the object.

=head2 B<REQUIRED> Bucket => Str

  

=head2 ContentMD5 => Str

  

=head2 GrantFullControl => Str

  Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.

=head2 GrantRead => Str

  Allows grantee to list the objects in the bucket.

=head2 GrantReadACP => Str

  Allows grantee to read the bucket ACL.

=head2 GrantWrite => Str

  Allows grantee to create, overwrite, and delete any object in the
bucket.

=head2 GrantWriteACP => Str

  Allows grantee to write the ACL for the applicable bucket.

=head2 B<REQUIRED> Key => Str

  

=head2 RequestPayer => Str

  


=cut

