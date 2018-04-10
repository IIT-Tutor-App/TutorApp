class Session < ApplicationRecord
  belongs_to :tutor
  has_and_belongs_to_many :students
end
