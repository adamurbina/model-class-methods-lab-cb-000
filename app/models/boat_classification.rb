class BoatClassification < ActiveRecord::Base
  belongs_to :boat
  belongs_to :classification

  def self.classification_counts(num)
    boat_counts = self.group(:boat_id).count
    matching_ids = bout_counts{|boat_id, boat_count| boat_count == num}
  end

end
