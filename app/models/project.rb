class Project < ApplicationRecord
  has_many :logs
  has_and_belongs_to_many :users, through: :logs
end
