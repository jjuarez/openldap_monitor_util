require "rubygems"
require "yaml"
require "openldap_monitor_extractor"


module OpenldapMonitorUtil

  class Cli
    
    def self.handle_error(options={ })
      
      options = { :exception => $!, :error_code =>0 }.merge(options)
      
      STDERR.puts( "Error: #{options[:exception].message}")
      Kernel.exit(options[:error_code])
    end
    
    def self.clean_key(key)
      key.strip.downcase.to_sym
    end
    
    def self.do_output(value, options)
       
      out = case options[:output]
        when nil      then $stdout
        when "stdout" then $stdout
      else
        File.open(options[:output], "w+")
      end
      
      out.puts value
      out
    end
    
    def self.run(options)
    
      clean_key = Cli.clean_key(options[:key])
      config    = YAML.load_file(options[:config])      
      value     = ::OpenldapMonitorExtractor.configure(config).get(clean_key)
      
      Cli.do_output(value, options)
    rescue => ex
      
      Cli.handle_error(:exception =>ex, :error_code=>1)
    end
  end
end