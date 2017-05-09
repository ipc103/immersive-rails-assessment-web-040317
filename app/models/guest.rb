class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances


  def self.top_guests
    self.joins(:appearances).group('guests.id').order('AVG(appearances.rating) DESC')
  end
end
