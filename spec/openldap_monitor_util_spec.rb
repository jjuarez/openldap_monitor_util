require 'spec_helper'
require 'openldap_monitor_util/version'


describe OpenldapMonitorUtil do
  
  it 'should have a version number' do
    
    OpenldapMonitorUtil::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    
    false.should be_true
  end
end
