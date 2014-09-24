package 'lighttpd'

service 'lighttpd' do
  action [:enable, :start]
end

cookbook_file '/var/www/index.html' do
  source 'wonderstuff.html'
end
