class Fortune < ActiveRecord::Base
  validates :body, presence: true
end
