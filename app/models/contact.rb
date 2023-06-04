class Contact < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :phone, presence: true

  after_create_commit -> { broadcast_prepend_later_to "contacts" }
  after_update_commit -> { broadcast_replace_later_to "contacts" }
  after_destroy_commit -> { broadcast_remove_to "contacts" }
  
  paginates_per 10

  def self.ransackable_attributes(auth_object = nil)
    [ "lastname" ]
  end
end
