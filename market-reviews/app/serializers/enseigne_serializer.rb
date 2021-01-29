class EnseigneSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :label, :image
  
  has_many :avis
end
