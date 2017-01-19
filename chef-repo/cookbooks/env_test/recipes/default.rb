#
# Cookbook Name:: env_test
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Version 0.1.3")

# Load the keys of the items in the 'admins' data bag
admins = data_bag('my_oracle_project_users')
Chef::Log.info("data_bag_item name: #{admins}")
admins.each do |node|
  # This causes a round-trip to the server for each admin in the data bag
  nodeInfo = data_bag_item('my_oracle_project_users', node)
 
 node['node'] == nodeInfo ? nodeInfo : nil
  nodeInfo.each do |key, value|
  	Chef::Log.info("#{key}: #{value}")

  end

end