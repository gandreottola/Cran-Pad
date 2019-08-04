# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :ideas
  has_many :tasks
end
