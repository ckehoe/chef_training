require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('httpd') do
    it { should be_installed }
  end

  describe file('/var/www/html/index.html') do
    it { should be_file }
  end

  describe file('/var/www/html/index.html') do
    its(:content) { should match /Hello/ } 
  end

  # Check that the webserver is running
  describe port(80) do
    it { should be_listening }
  end

  # Check that the webserver is accepting traffic
  describe command('curl localhost') do
    its(:exit_status) { should eq 0 }
  end
end
