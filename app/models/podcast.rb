class Podcast < ActiveRecord::Base
  attr_accessible :author, :description, :series, :title, :url, :date
end
