class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    self.select(:name).distinct
  end

  def self.sailboats
    self.where("name = Sailboats")
  end

  #boats <> boat_classifications <> classifications

end
