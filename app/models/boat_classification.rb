class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.three_classifications

  end

end
