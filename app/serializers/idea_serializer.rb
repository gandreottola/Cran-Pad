# frozen_string_literal: true

class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :date

  belongs_to :user
end
