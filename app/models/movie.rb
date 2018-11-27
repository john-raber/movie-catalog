class Movie < ApplicationRecord
  validates_presence_of :title, :summary, :year, :genre
end
