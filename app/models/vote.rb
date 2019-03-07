class Vote < ApplicationRecord
  belongs_to :party

  scope :yellow, -> { Vote.joins(:party).where('parties.name' => "Amarillo")  }
  scope :blue, -> { Vote.joins(:party).where('parties.name' => "Azul")  }
  scope :purple, -> { Vote.joins(:party).where('parties.name' => "Morado")  }
  scope :green, -> { Vote.joins(:party).where('parties.name' => "Verde")  }
  parties = [Party.first,Party.second,Party.third,Party.fourth]
  scope :other, -> { Vote.where.not(party: parties)  }
end
