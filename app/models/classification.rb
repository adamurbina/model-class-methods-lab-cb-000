class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    self.select(:name).distinct
  end

  def self.longest
    self.joins(:boats).group('boats.length').having("length = ?", Boat.maximum(:length))
  end


end
