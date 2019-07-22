# frozen_string_literal: true

class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :date, :editable

  def editable
    scope == object.user
  end
end
