class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.sailboats
    self.where(classification_id: Classification.sailboat.first.id)
  end
end
