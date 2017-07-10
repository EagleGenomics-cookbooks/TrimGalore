require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe command('. /etc/profile; which fastqc') do
  its(:exit_status) { should eq 0 }
end

describe command('. /etc/profile; which cutadapt') do
  its(:exit_status) { should eq 0 }
end

describe file("#{ENV['TRIM_GALORE_INSTALL_DIR']}/trim_galore_zip") do
  it { should be_directory }
end

describe file("#{ENV['TRIM_GALORE_INSTALL_DIR']}/trim_galore_zip/trim_galore") do
  it { should be_file }
  it { should be_executable }
end

describe command('. /etc/profile; which trim_galore') do
  its(:exit_status) { should eq 0 }
end

#version_edited = ENV['TRIM_GALORE_VERSION'].delete('v')

describe command('. /etc/profile; trim_galore -version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain version_edited }
end
