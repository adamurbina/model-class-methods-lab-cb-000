class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.three_classifications
    self.group(:classification_id)
  end

end
