require 'base/cf_base'
require 'base/cf_helper'
require 'iam/cf_iam_instance_profile'

class CfIamAccessKey
  include CfBase
  
  def initialize(name, user_name, status, options = {})
    @name = name 
    @status = status
    @user_name = user_name
    @serial = options[:serial]
  end
    
  def get_cf_type
    "AWS::IAM::AccessKey"
  end
  
  def get_cf_attributes
    {}
  end
  
  def get_cf_properties
    result = {
      "Status" => @status,
      "UserName" => @user_name
    }
    result["Serial"] = @serial unless @serial.nil?
    result
  end
  
end