class Production < ApplicationRecord
    validates_presence_of :title, :genre, :budget, :image, :director, :description
    validates :title, presence: true, uniqueness: true, length: { maximum: 50 }
    validates :budget, numericality: {greater_than: 0}
    validates :description, length: { in: 3..500 }
    validates :genre, exclusion: { in: %w(musical drama), message: "sorry, that genre is not approved"  }

end
