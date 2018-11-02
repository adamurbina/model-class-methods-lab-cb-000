class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    self.where(id: Boat.find_classification("Catamaran").pluck(:captain_id))
  end

  def self.sailors
    self.where(id: Boat.find_classification("Sailboat").pluck(:captain_id))
  end

  def self.talented_seafarers
    self.where(id: [Boat.find_classification("Motorboat").pluck(:captain_id), Boat.find_classification("Sailboat").pluck(:captain_id)].flatten)
  end

  def non_sailors
    
  end

end
