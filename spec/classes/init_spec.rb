require 'spec_helper'

describe 'barbecue' do
  context "clean state" do
    let(:pre_condition) { "include apt"}
    let(:facts) { {:osfamily=> 'Debian', :lsbdistid => 'debian'} }

    it { should contain_apt__key('celestial') }
    it { should contain_apt__source('barbecue') }
  end

  context "already defined" do
   let(:facts) { {:osfamily=> 'Debian', :lsbdistid => 'debian'} }
   let(:pre_condition) { "apt::source { 'barbecue':release => 'quantal'}"}
   it { should_not contain_apt__key('celestial') }
  end
end


