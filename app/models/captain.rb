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

  def self.motorboaters
    #self.where(id: Boat.find_classification("Sailboat").pluck(:captain_id))
    self.joins(boats: :classifications).where(classifications: {name: "Motorboat"}).distinct
  end

  def self.talented_seafarers
    motorboaters = self.motorboaters.pluck(:id)
    sailors = self.motorboaters.pluck(:id)
    self.where(id: [motorboaters, sailors].distinct)



  end

  def self.non_sailors
    self.joins(boats: :classifications).where.not(classifications: {name: "Sailboat"}).distinct
  end

end
