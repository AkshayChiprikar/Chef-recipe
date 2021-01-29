#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

#file 'var/www/html/index.html' do
#  content "<h1> Hello Everyone !!!!welcome to Devops!!!My index file<h1> <img src='img1'>"
#  action :create
#end


#file 'var/www/html/test.html' do
#  content "<h1> Hello Everyone !!!!welcome to Devops!!!!Good Afternoon<h1>"
#  action :create
#end

template 'var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

remote_file 'var/www/html/sai.png' do
  source 'https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg'
end

remote_file 'var/www/html/hari.png' do
  source 'https://s3-us-west-2.amazonaws.com/uw-s3-cdn/wp-content/uploads/sites/6/2017/11/04133712/waterfall.jpg'
end

service 'httpd' do
  action [:enable,:start]
end


