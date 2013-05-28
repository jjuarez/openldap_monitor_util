require 'rubygems'
require 'choice'


module Nagios

  Choice.options do
     
    header ''
    header ' Options:'

    option :config, :required =>true do
      short '-c'
      long  '--config'
      desc  'The config file'
    end
    
    option :key, :required =>true do
      short '-k'
      long  '--key'
      desc 'The key to extract from the Monitor backend database'
    end
    
    option :output,  :required =>false do
      short '-o'
      long  '--output'
      default "stdout"
      desc  'The output...'
    end 

    separator ''
    separator ' help:'

    option :help do
      short '-h'
      long  '--help'
    end

    separator ''
  end
end