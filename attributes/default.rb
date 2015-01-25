#
# Cookbook Name:: vault-cli
#
# Attributes
#
# Copyright 2015, Peter Abbott
#
# All rights reserved - Do Not Redistribute
#
default['vault_cli']['artifact_repo'] = 'https://repo1.maven.org/maven2'
default['vault_cli']['version'] = '3.1.6'
default['vault_cli']['artifact_path'] = 'org/apache/jackrabbit/vault/vault-cli'
default['vault_cli']['download_url'] = "#{node['vault_cli']['artifact_repo']}/#{node['vault_cli']['artifact_path']}/#{node['vault_cli']['version']}/vault-cli-#{node['vault_cli']['version']}-bin.tar.gz"
