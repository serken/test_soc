class Character < ApplicationRecord
  belongs_to :user
  has_one :work
  has_many :houses

  validates :name, :user_id, uniqueness: { scope: :user_id }

  def update_money
    return unless work

    hours = (Time.now.utc - money_update.utc) / 3600
    update_attributes(money: money + (Work::MONEY_PER_LEVEL[work.level] * hours), money_update: Time.now.utc)
  end
end
