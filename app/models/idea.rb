# frozen_string_literal: true

class Idea < ApplicationRecord
  belongs_to :user
  validates :name, :category, :description, :date, :user, presence: true
end
