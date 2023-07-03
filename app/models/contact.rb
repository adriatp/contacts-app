class Contact < ApplicationRecord
  after_create_commit { broadcast_prepend_to "contacts" }
  after_update_commit { broadcast_replace_to "contacts" }
  after_destroy_commit { broadcast_remove_to "contacts" }

  paginates_per 10

  def self.ransackable_attributes(auth_object = nil)
    [ "lastname" ]
  end
end
