class DesignAxi < ApplicationRecord
  belongs_to :version
  belongs_to :parameter
  
  attr_accessor :minimumValue
  attr_accessor :maximumValue
  attr_accessor :resolution
end
