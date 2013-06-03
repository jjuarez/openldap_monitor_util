#!/usr/bin/env ruby

$:.unshift File.join(File.dirname(__FILE__), %w{.. lib})

require 'rubygems'
require 'openldap_monitor_extractor'
require 'openldap_monitor_util/cli'


##
# ::main::
if ARGV[0]
  
  config_file = File.join(File.dirname(__FILE__), ARGV[0])

  OpenldapMonitorExtractor::Mapper.dns.each do |k| 
  
    print "#{k.upcase}: "
    OpenldapMonitorUtil::Cli.run(:config=>config_file, :key=>k.to_s)
  end
end