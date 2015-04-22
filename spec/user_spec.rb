# require 'spec_helper'
# require './app/user'

# describe User do
#   before(:each) do
#     sign_up
#   end

#   context 'user signs up' do
#     it 'and has email' do
#       expect(described_class.email).to eq('milly@b.com')
#     end
#   end

#   def sign_up(email = 'milly@b.com',
#                 handle = 'lemon-lime', name = 'Milena',
#                 password = 'sherbert!', password_confirmation = 'sherbert!')
#     visit '/users/new'
#     expect(page.status_code).to eq(200)
#     fill_in :email, with: email
#     fill_in :handle, with: handle
#     fill_in :name, with: name
#     fill_in :password, with: password
#     fill_in :password_confirmation, with: password_confirmation
#     click_button('Register')
#   end
# end
