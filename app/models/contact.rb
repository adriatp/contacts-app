class Contact < ApplicationRecord
  paginates_per 10

  def self.ransackable_attributes(auth_object = nil)
    [ "lastname" ]
  end
end
