class HoroscopeSerializer < ActiveModel::Serializer
  attributes :id, :content, :starsign_id, :date 
end
