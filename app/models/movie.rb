class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year
  has_and_belongs_to_many :stars
end
