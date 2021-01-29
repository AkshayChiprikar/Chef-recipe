#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/myfile2' do
  content "my second file!!!!Good evening"
  action :create
  owner 'root'
  group 'root'
end

user 'Hari' do
  action :create
end
 
group "Devops" do
  action :create
  members 'Hari'
  append true
end


user 'Akki'
group 'AWS'
package 'wget'

%w(httpd mysql mariadb-server unzip vim).each do |p|
  package p do
    action :install
  end
end

%w(user1 user2 user3 user4 user5).each do |u|
  user u do
    action :create
  end
end









