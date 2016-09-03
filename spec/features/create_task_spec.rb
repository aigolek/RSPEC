require 'rails_helper'
feature 'create task' do
	scenario 'correct data' do
       visit '/'
       click_on 'Create task'
       fill_in 'Name', with: 'to buy groceries'
       fill_in 'Text', with: 'bread, milk, etc'
       click_on 'Save'
       expect(page).to have_content('Saved')
       expect(Task.last.name).to eq('to buy groceries')
       
    end
    scenario 'incomlete data' do
       visit '/'
       click_on 'Create task'
       click_on 'Save'
       expect(page).to have_content("can't be blank")
    end

end