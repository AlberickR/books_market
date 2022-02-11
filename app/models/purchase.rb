class Purchase < ApplicationRecord
  
  belongs_to :users
  has_many :books, dependent: :destroy
end