class Star < ActiveRecord::Base
  attr_accessible :dob, :name, :photo_url
  has_and_belongs_to_many :movies
end
