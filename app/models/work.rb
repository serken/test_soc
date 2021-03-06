class Work < ApplicationRecord
  belongs_to :character

  MONEY_PER_LEVEL = ->(i) { 100 * i }

  def get_money
    money_to_earn = MONEY_PER_LEVEL[self.level]
    character.money += money_to_earn
    character.save
  end

  def level_up_work
    self.level += 1
    save
  end
end
