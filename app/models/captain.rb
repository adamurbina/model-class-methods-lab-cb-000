class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    #self.where(id: Boat.find_classification("Catamaran").pluck(:captain_id))
    self.joins(boats: :classifications).where(classifications: {name: "Catamaran"}).distinct
  end

  def self.sailors
    #self.where(id: Boat.find_classification("Sailboat").pluck(:captain_id))
    self.joins(boats: :classifications).where(classifications: {name: "Sailboat"}).distinct
  end

  def self.talented_seafarers
    self.joins(boats: :classifications).where(classifications: {name: ["Sailboat", "Motorboat"]}).distinct

    self.joins(boats: :classifications).where(classifications: {name: "Sailboat"}).or(self.joins(boats: :classifications).where(classifications: {name: "Motorboat"}))

  end

  def self.non_sailors
    self.joins(boats: :classifications).where.not(classifications: {name: "Sailboat"}).distinct
  end

end
