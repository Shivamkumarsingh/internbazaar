class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :jobs
	has_many :brands, :through => :jobs
	has_many :orders
	has_many :experiences
	has_many :certifications
	has_many :educations
	has_many :courses
	has_many :projects
	serialize :skills,Array
	serialize :languages,Array

	has_many :dashboards
end
