class User < ApplicationRecord
  has_one :character

  validates :login, uniqueness: true

  def create_character(name)
    return if character

    c = Character.create(name: name, user_id: id, money_update: Time.current)
    House.create(character_id: c.id, level: 1)
  end
end
