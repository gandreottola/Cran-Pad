class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :date
end
