#
# Cookbook Name:: oracle_sudo_user
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("The value of password is #{node['oracle_sudo_user']['sudo']['password']}")

template '/root/sudoers' do
  source 'sudoers.erb'
  mode '0775'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['oracle_sudo_user']['sudo']['groups'],
    sudoers_users: node['oracle_sudo_user']['sudo']['users'],
    passwordless: node['oracle_sudo_user']['sudo']['password']
  })
end