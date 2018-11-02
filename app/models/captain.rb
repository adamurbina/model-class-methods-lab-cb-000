class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    self.where(id: Boat.find_classification("Catamaran"))
  end

  def self.sailors

  end

end
