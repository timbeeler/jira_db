#
# Cookbook Name:: jira_db
# Recipe:: default
#
# Copyright (c) 2015 Tim Beeler, All Rights Reserved.

mysql_service 'mysql' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end
