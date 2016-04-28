#
# Author:: Earth U (<iskitingbords@gmail.com>)
# Cookbook Name:: cookbook-phpmyadmin
# Recipe:: get_source
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

include_recipe 'tar'

url = "#{node['cookbook-phpmyadmin']['base_url']}/"\
      "#{node['cookbook-phpmyadmin']['version']}/"\
      "phpMyAdmin-#{node['cookbook-phpmyadmin']['version']}-english.tar.gz"
idfile = "#{node['cookbook-phpmyadmin']['install']['doc_root']}/"\
         "RELEASE-DATE-#{node['cookbook-phpmyadmin']['version']}"

directory node['cookbook-phpmyadmin']['install']['doc_root'] do
  owner     node['cookbook-phpmyadmin']['install']['user']
  group     node['cookbook-phpmyadmin']['install']['group']
  recursive true
end

tar_extract url do
  target_dir node['cookbook-phpmyadmin']['install']['doc_root']
  tar_flags  ['--strip-components 1']
  creates    idfile
  notifies   :run, 'execute[chown_pma_doc_root]'
end

execute 'chown_pma_doc_root' do
  command "chown -R "\
          "#{node['cookbook-phpmyadmin']['install']['user']}:"\
          "#{node['cookbook-phpmyadmin']['install']['group']} "\
          "#{node['cookbook-phpmyadmin']['install']['doc_root']}"
  action  :nothing
end
