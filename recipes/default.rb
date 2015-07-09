#
# Cookbook Name:: TrimGalore
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
##########################################################

include_recipe 'build-essential'
include_recipe 'FastQC' 
include_recipe 'cutadapt' 

##########################################################
# here for use by serverspec


##########################################################

package ['unzip'] do
  action :install
end

##########################################################

remote_file "#{Chef::Config[:file_cache_path]}/#{node['TrimGalore']['filename']}" do
  source node['TrimGalore']['url']
  action :create_if_missing
end

execute "unzip #{Chef::Config[:file_cache_path]}/#{node['TrimGalore']['filename']} -d #{node['TrimGalore']['install_dir']}" do
  not_if { ::File.exist?("#{node['TrimGalore']['install_dir']}/trim_galore_zip/trim_galore") }
end

##########################################################
##########################################################
