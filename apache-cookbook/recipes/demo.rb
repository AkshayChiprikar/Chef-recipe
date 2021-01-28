#
# Cookbook:: apache-cookbook
# Recipe:: demo
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'Install apache' do
  case node [:platform]
  when 'redhat','centos'
    package_name 'httpd'
  when 'ubuntu','debian'
    package_name 'apache2'
  end
end

