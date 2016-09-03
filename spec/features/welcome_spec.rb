require 'rails_helper.rb'
feature 'home page' do
	scenario 'visit home page' do
       visit '/'
       expect(page).to have_content('Welcome!')
 	end
end
