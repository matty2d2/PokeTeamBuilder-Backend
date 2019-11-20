class Pokemon < ApplicationRecord
    validates :name, uniqueness: true
    has_many :pokemon_abilities
    has_many :pokemon_types
    has_many :abilities, through: :pokemon_abilities
    has_many :types, through: :pokemon_types
end
