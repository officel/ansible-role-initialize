require 'spec_helper'

# officel.selinux
describe selinux do
  it { should be_disabled }
end


# officel.timezone
# CentOS 7 ..._no


# officel.ulimit
# how to test?


# officel.yum-repos
describe command('ls /etc/yum.repos.d/') do
  its(:stdout) { should match /CentOS-Base/ }
  its(:stdout) { should match /epel/ }
  its(:stdout) { should match /remi/ }
  its(:stdout) { should match /mysql/ }
  its(:stdout) { should match /nginx/ }
end


# officel.yum-default
describe package('sshpass') do
  it { should be_installed }
end

describe package('mlocate') do
  it { should be_installed }
end

describe package('tmux') do
  it { should be_installed }
end

describe package('bash-completion') do
  it { should be_installed }
end


# officel.sysctl-conf
describe file('/etc/sysctl.conf') do
  it { should contain('1').after('net.ipv4.tcp_tw_recycle') }
  it { should contain('1').after('net.ipv4.tcp_tw_reuse') }
  it { should contain('30').after('net.ipv4.tcp_fin_timeout') }
  it { should contain('65535').after('net.core.somaxconn') }
end


# officel.service-stop
describe service('auditd') do
  it { should_not be_enabled }
end


# officel.etckeeper
describe package('etckeeper') do
  it { should be_installed }
end


# officel.anyenv
describe file('/opt/anyenv') do
  it { should be_directory }
end

describe file('/opt/anyenv/envs') do
  it { should be_directory }
end

describe command('ANYENV_ROOT=/opt/anyenv /opt/anyenv/bin/anyenv') do
  its(:stderr) { should contain('Usage') }
end

describe command('ANYENV_ROOT=/opt/anyenv /opt/anyenv/bin/anyenv versions') do
  its(:stdout) { should contain('rbenv') }
  its(:stdout) { should contain('pyenv') }
end

