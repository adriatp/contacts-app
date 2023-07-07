# frozen_string_literal: true

require 'application_system_test_case'

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts('fix_1')
  end

  test 'visiting the index' do
    visit contacts_url
    assert_selector 'h2', text: 'Contacts'
  end

  test 'should create contact' do
    visit contacts_url

    click_on '+ Add contact'

    fill_in 'Firstname', with: Faker::Name.first_name
    fill_in 'Lastname', with: Faker::Name.last_name
    fill_in 'Phone', with: Faker::PhoneNumber.cell_phone

    click_on 'Create Contact'

    assert_text 'Contact was successfully created'
  end

  test 'should say that attributes are missing on create' do
    visit contacts_url

    click_on '+ Add contact'

    click_on 'Create Contact'

    assert_text "Firstname can't be blank"
    assert_text "Lastname can't be blank"
    assert_text "Phone can't be blank"
  end

  test 'should update Contact' do
    visit contacts_url
    click_on(class: 'contact-link', match: :first)

    fill_in 'Firstname', with: Faker::Name.first_name
    fill_in 'Lastname', with: Faker::Name.last_name
    fill_in 'Phone', with: Faker::PhoneNumber.cell_phone

    click_on 'Update Contact'

    assert_text 'Contact was successfully updated'
  end

  test 'should say that attributes are missing on update' do
    visit contacts_url

    click_on(class: 'contact-link', match: :first)

    fill_in 'Firstname', with: ''
    fill_in 'Lastname', with: ''
    fill_in 'Phone', with: ''

    click_on 'Update Contact'

    assert_text "Firstname can't be blank"
    assert_text "Lastname can't be blank"
    assert_text "Phone can't be blank"
  end

  test 'should destroy Contact' do
    visit contacts_url
    accept_alert do
      click_on(class: 'btn-danger', match: :first)
    end
    assert_text 'Contact was successfully destroyed'
  end
end
