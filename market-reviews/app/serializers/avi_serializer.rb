class AviSerializer
  include FastJsonapi::ObjectSerializer
  attributes :titre, :description, :score, :enseigne_id
end
