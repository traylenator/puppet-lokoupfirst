require 'spec_helper'
describe 'lookupparam::hierafirst', type: 'class' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:hiera_config) { 'spec/hiera.yaml' }
      let(:facts) do
        facts
      end

      context 'with defaults for all parameters' do
        it { is_expected.to contain_class('lookupparam::hierafirst') }
        it { is_expected.to contain_notify('beta') }
        it { is_expected.to contain_notify('gamma') }
      end
    end
  end
end
