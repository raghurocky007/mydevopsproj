Chef::Log.info("my plateform name is = #{node['platform']}")
Chef::Log.info("My cookbook attributes are #{node["cookbook1"]["platform_name"]}")

node["lamp-stack"]["sites"]["example.com"].each do |key, value|
	Chef::Log.info("My key is #{key} and the value is #{value}")
end

if node['platform'] == 'oracle'
	directory '/etc/apache2' do
	  owner 'root'
	  group 'root'
	  mode '0755'
	  action :create
	end
else
	directory 'c:\chef\apache2' do
	  action :create
	end
end