require 'spec_helper'
describe 'lookupparam', type: 'class' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:hiera_config) { 'spec/hiera.yaml' }
      let(:facts) do
        facts
      end

      context 'with defaults for all parameters' do
        it { is_expected.to contain_class('lookupparam') }
        it { is_expected.to contain_class('lookupparam').with_testparam(['gamma','beta']) }
      end
    end
  end
end
