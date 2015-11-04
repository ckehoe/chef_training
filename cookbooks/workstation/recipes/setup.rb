#!/usr/bin/ruby

package 'nano'

package 'tree'

package 'git'

file '/etc/motd' do
  content 'Property of Boeing'
  action :create
end
