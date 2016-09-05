require 'spec_helper'

describe command('ls /etc/yum.repos.d/') do
  its(:stdout) { should match /CentOS-Base/ }
  its(:stdout) { should match /epel/ }
  its(:stdout) { should match /remi/ }
  its(:stdout) { should match /mysql/ }
  its(:stdout) { should match /nginx/ }
end

