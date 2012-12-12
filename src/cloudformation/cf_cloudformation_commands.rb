require 'base/cf_base'
require 'base/cf_inner'
require 'base/cf_helper'

class CfCloudFormationCommands
  include CfInner

  def initialize(commands)
    @commands = commands
    @additional_indent = 4
  end  
      
  def additional_indent
    @additional_indent += 2
  end
    
  def get_cf_attributes
    result = {} 
    @commands.each() {|command|
      result[command.get_name] = command.generate
    }
    result
  end
      
end
