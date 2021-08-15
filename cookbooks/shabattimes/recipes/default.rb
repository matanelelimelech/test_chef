#
# Cookbook:: shabattimes
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
git '/opt/shabattimes' do
  repository 'https://github.com/matanelelimelech/ShabbatTimes.git'
  revision 'master'
  action :sync
end

cron 'name_of_cron_entry' do
  minute '0'
  hour '10'
  weekday '5'
  command '/opt/shabbattimes/itamar.py'
  action :create
end
