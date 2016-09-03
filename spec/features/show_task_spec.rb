require 'rails_helper'
feature 'show task' do
	scenario 'show task' do
       t = Task.create(name: 'test 2', text: 'Hello')
p t.id
       visit "/tasks/#{t.id}"
       expect(page).to have_content(t.name) 
    end
end