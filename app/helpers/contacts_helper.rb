# frozen_string_literal: true

# The ContactsHelper module provides helper methods specifically related to contacts in the Rails application.
module ContactsHelper
  def full_name(contact)
    "#{contact.firstname} #{contact.lastname}"
  end
end
