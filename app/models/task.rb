# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :user
  validates :start_date, :end_date, :priority, :description, :user, presence: true
end
