require 'spec_helper'

feature 'user can sign up' do
  scenario 'from the homepage' do
    visit('/')
    click_link('Sign Up')
    expect { sign_up }.to change(User, :count).by(1)
  end

  def sign_up(email = 'milly@b.com',
              handle = 'lemon-lime', name = 'Milena',
              password = 'sherbert!', password_confirmation = 'sherbert!')
    visit '/users/new'
    expect(page.status_code).to eq(200)
    fill_in :email, with: email
    fill_in :handle, with: handle
    fill_in :name, with: name
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click('Register')
  end

  # user goes to the homepage
  # user sees sign up link
  # user clicks on link, goes to sign up page
  # user fills in handle, name, email, password,
  # hits register
end
