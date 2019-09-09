class StarsignSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date_start, :date_end
  
end
