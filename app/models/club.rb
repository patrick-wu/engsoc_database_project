class Club < ActiveRecord::Base
  has_many :requests
  belongs_to :category
end
