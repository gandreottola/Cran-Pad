# frozen_string_literal: true

class TaskSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :priority, :description

  belongs_to :user
end
