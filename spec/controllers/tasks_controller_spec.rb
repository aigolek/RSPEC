require 'rails_helper'
describe TasksController do
	describe 'get index' do 
        it 'renders index' do
            get :index 
            expect(response).to render_template(:index)  

        end 
        it 'assigns tasks variable' do
            get :index
        	expect(assigns(:tasks)).to match_array(Task.all)
        end
    end   
end