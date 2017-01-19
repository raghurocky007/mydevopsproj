def systeminfo # rubocop:disable MethodLength
 Chef::Log.debug "Looking for systeminfo for node #{node.name}"
 nodename = data_bag('my_oracle_project_users')
 Chef::Log.debug "All nodename: #{nodename.inspect}"
 nodename = nodename.map do |item_id|
   nodename = data_bag_item('my_oracle_project_users', item_id)
   Chef::Log.debug "my_oracle_project_users #{item_id}: #{nodename}"
   nodename['id'] == node.name ? nodename : nil
 end.compact
 nodename = search(:my_oracle_project_users, "id:#{node.name}")
 Chef::Log.info "Found #{nodename.count} databags for node:#{node.name}"
 nodename
end