class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.classification_counts(num)
    self.group(:boat_id).count
  end

end
