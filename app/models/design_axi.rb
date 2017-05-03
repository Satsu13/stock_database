class DesignAxi < ApplicationRecord
  belongs_to :version
  belongs_to :parameter
  
  has_and_belongs_to_many :arguments
  
end
