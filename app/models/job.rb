class Job < ActiveRecord::Base
  belongs_to :student
  belongs_to :brand
  has_many :order
  scope :infosys,-> {where(brand_id: 1)}
  scope :wipro,-> {where(brand_id: 2)}
  scope :cognizant,-> {where(brand_id: 3)}
  scope :amazon,-> {where(brand_id: 4)}
  scope :accenture,-> {where(brand_id: 5)}

  has_many :dashboards
end
