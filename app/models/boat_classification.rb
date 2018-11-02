class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.count
    self.group(:classification_id).count
  end

end
