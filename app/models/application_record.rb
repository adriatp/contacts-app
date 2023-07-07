# frozen_string_literal: true

# The ApplicationRecord class is the base class for all models in the Rails application.
# It provides common functionality and configuration for interacting with the database.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.ransackable_attributes(_auth_object = nil)
    []
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
