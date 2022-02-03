class AirlineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_rul, :slug

  has_many :reviews
end
