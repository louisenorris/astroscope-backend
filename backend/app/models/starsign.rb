class Starsign < ApplicationRecord
    has_many :users
    has_many :horoscopes
end
