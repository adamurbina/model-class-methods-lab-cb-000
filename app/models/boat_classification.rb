class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.classification_counts
    self.group(:classification_id).count
  end

end
