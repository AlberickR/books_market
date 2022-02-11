class Book < ApplicationRecord
  
  belongs_to :users, optional: true
  has_many_attached :files
end