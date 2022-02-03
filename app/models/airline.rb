class Airline < ApplicationRecord
  has_many :reviews

  before_create :slugify

  def slugify
    self.slug=name.parameterize
  end

  def avg_score
    reviews.average(:score).present? ? round(2).to_f: 0
  end
end
