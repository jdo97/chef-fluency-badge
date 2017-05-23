package 'apache' do
       package_name httpd 
end 

service 'apache' do 
       package_name httpd
       action [:start, :enable]
end

file '/var/www/html/index.html' do 
	content 'This is my main website'
end 
