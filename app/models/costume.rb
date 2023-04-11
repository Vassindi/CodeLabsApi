class Costume < ApplicationRecord
    belongs_to :outfit :through => :character
end
