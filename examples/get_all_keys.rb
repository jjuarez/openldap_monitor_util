#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), %w{.. lib})

require 'openldap_monitor_extractor'
require 'openldap_monitor_util/cli'


##
# ::main::
config_file = File.join(File.dirname(__FILE__), 'production.yml')

OpenldapMonitorExtractor::KEYS.each do |k| 
  
  print "#{k.upcase}: "
  OpenldapMonitorUtil::Cli.run(:config=>config_file, :key=>k.to_s)
end