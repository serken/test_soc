class Character < ApplicationRecord
  belongs_to :user

  validates :name, :user_id, uniqueness: { scope: :user_id }
end
