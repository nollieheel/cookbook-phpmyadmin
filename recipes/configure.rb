#
# Author:: Earth U (<iskitingbords@gmail.com>)
# Cookbook Name:: cookbook-phpmyadmin
# Recipe:: configure
#
# Copyright 2016, Earth U
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'openssl'
require 'securerandom'

cfile = "#{node['cookbook-phpmyadmin']['install']['doc_root']}/config.inc.php"

template cfile do
  mode   0644
  action :create_if_missing
  owner  node['cookbook-phpmyadmin']['install']['user']
  group  node['cookbook-phpmyadmin']['install']['group']
  variables(
    :secret     => OpenSSL::Digest::SHA256.hexdigest(SecureRandom.hex),
    :db_map     => node['cookbook-phpmyadmin']['config']['db_map'],
    :statements => node['cookbook-phpmyadmin']['config']['statements']
  )
end
