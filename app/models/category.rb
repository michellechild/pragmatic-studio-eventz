class Category < ApplicationRecord
has_many :categorizations, dependent: :destroy
has_many :events, through: :events
  
  validates :name, presence: true, uniqueness: true

end
