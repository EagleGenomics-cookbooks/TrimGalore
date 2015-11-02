require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe command('which fastqc') do
  its(:exit_status) { should eq 0 }
end

describe command('which cutadapt') do
  its(:exit_status) { should eq 0 }
end

describe file("#{ENV['TRIM_GALORE_INSTALL_DIR']}/trim_galore_zip") do
  it { should be_directory }
end

describe file("#{ENV['TRIM_GALORE_INSTALL_DIR']}/trim_galore_zip/trim_galore") do
  it { should be_file }
  it { should be_executable }
end

describe command('which trim_galore') do
  its(:exit_status) { should eq 0 }
end

version_edited = ENV['TRIM_GALORE_VERSION'].replaceAll('v', '')

describe command('trim_galore -version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain version_edited }
end
