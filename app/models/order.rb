class Order < ActiveRecord::Base
  belongs_to :student
  belongs_to :job
end
