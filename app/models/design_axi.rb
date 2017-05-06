class DesignAxi < ApplicationRecord
  belongs_to :parameter
  belongs_to :version

  has_and_belongs_to_many :arguments
end
