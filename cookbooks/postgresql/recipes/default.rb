#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgrsql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

servie 'postgresql' do
	action [:enable, :start]
end
