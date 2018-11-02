class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.count_classifications
    self.group(:classification_id).count
  end

end
