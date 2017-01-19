Chef::Log.info("my plateform name is = #{node['git-install']['git-version']}")

=begin
	
rescue Exception => e
	
end
remote_file "/root/#{node['git-install']['git-version']}.tar.gz" do
	source "https://www.kernel.org/pub/software/scm/git/#{node['git-install']['git-version']}.tar.gz"
	action :create
end

bash 'install_git' do
  cwd '/root'
  code <<-EOH
    tar -zxf #{node['git-install']['git-version']}.tar.gz
    cd #{node['git-install']['git-version']}
    ./configure
    make && make install
    git --version
    EOH
end
=end