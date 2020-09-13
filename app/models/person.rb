class Person < ApplicationRecord
  scope :filter_by_name, -> (name) { where name: name }
  has_many :reviews, dependent: :destroy #This creates person.reviews method
end
