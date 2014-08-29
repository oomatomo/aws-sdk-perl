package Aws::DataPipeline::ValidationWarning {
  use Moose;
  with ('AWS::API::ResultParser');
  has id => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Str]');
}
1