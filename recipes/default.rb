#
# Cookbook Name:: templateCookbook
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
##########################################################

include_recipe 'build-essential'
include_recipe 'java'

##########################################################
# here for use by serverspec

##########################################################

remote_file "#{Chef::Config[:file_cache_path]}/#{node['TrimGalore']['filename']}" do
  source node['TrimGalore']['url']
  action :create_if_missing
end

##########################################################
##########################################################
