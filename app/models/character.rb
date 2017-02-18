class Character < ApplicationRecord
  belongs_to :user
  has_one :work
  has_many :houses

  validates :name, :user_id, uniqueness: { scope: :user_id }
end
