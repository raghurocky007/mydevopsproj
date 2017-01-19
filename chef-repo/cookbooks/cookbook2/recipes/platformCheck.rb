Chef::Log.info("my plateform name is = #{node['platform']}")

if node['platform'] == 'oracle'
	yum_package 'telnet' do
	  action :install
	end
else
	apt_package 'telnet' do
	  action :install
	end
end