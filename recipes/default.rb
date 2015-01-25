#
# Cookbook Name:: vault-cli
# Recipe:: default
#
# Copyright 2015, Peter Abbott
#
# All rights reserved - Do Not Redistribute
#

ark 'vault-cli' do
  action :install
  url node['vault_cli']['download_url']
  version node['vault_cli']['version']
  checksum node['vault_cli']['checksum'] if node['vault_cli']['checksum']
  action :install
end
