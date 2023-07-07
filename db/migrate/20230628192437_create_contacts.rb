# frozen_string_literal: true

# This migration creates the 'contacts' table in the database.
# The 'contacts' table stores information about individual contacts.
class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.timestamps
    end
  end
end
