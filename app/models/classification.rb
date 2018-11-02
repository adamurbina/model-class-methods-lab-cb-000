class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    self.select(:name).distinct
  end

  def self.sailboat
    self.where(name: "Sailboat")
  end

  #boats <> boat_classifications <> classifications

end
