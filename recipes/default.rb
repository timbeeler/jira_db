#
# Cookbook Name:: jira_db
# Recipe:: default
#
# Copyright (c) 2015 Tim Beeler, All Rights Reserved.

package 'mysql'
package 'mysql-server'

service 'mysql' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end

service 'iptables' do
  action [:stop, :disable]
end
