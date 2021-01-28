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

