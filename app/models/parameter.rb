class Parameter < ApplicationRecord
	has_many :design_axis
	has_many :arguments
end
