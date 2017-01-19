#
# Cookbook Name:: cookbook1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
include_recipe 'cookbook1::myRecipe'
include_recipe 'cookbook1::recipe2'
Chef::Log.info("I am in chef version")
=end

Chef::Log.info("The platform of hostname #{node['hostname']} is #{node['platform']}")