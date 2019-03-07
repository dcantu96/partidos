class Party < ApplicationRecord
    validates :name, uniqueness: true
end
