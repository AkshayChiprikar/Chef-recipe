#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/myfile' do
  content "Hello Everyone !!! welcome to devops!!!my first file"
  action :create
end


execute "My Linux Command" do
  command <<-EOH
  yum install docker -y
  service docker start
  EOH
end

