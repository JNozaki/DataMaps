class State < ApplicationRecord
	has_one :education
	has_one :employment_rate
	has_one :income
	has_one :newspaper
	has_one :population
	has_one :poverty
end
