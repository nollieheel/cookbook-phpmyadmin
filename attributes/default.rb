#
# Author:: Earth U (<iskitingbords@gmail.com>)
# Cookbook Name:: cookbook-phpmyadmin
# Attributes:: default
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

default['cookbook-phpmyadmin']['version'] = '4.6.0'
# Full URL will be: '<base_url>/<version>/phpMyAdmin-<version>-english.tar.gz
default['cookbook-phpmyadmin']['base_url'] =
  'https://files.phpmyadmin.net/phpMyAdmin'

default['cookbook-phpmyadmin']['install']['doc_root'] = '/var/www/pma'
default['cookbook-phpmyadmin']['install']['user']     = 'root'
default['cookbook-phpmyadmin']['install']['group']    = 'root'

default['cookbook-phpmyadmin']['config']['db_map'] = [
  #{
    #:verbose   => 'Name of server', #optional
    #:auth_type => 'cookie',         #optional
    #:host      => 'localhost',
    #:port      => '3306',           #optional
    #:con_type  => 'tcp',            #default: 'tcp'
    #:socket    => ''                #optional
  #}
]
default['cookbook-phpmyadmin']['config']['statements'] = [
  #'additional statements for config here'
]
