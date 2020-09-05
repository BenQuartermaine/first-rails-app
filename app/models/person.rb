class Person < ApplicationRecord
  validates :name, presence: true
  validates :family_member, presence: true
end
