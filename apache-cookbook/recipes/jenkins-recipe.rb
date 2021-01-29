#
# Cookbook:: apache-cookbook
# Recipe:: jenkins-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.


package 'java-1.8*' do
 action :install
end

remote_file '/etc/yum.repos.d/jenkins.repo' do
  source 'https://pkg.jenkins.io/redhat-stable/jenkins.repo'
end

execute 'Import key' do
  command 'rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key'
end

package 'jenkins' do
  action :install
end

service 'jenkins' do
  action [:enable , :start]
end


