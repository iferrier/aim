require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'create' do
    context 'when request is successful' do
      subject { post :create }

      context 'with mocking' do
      end

      context 'without mocking' do
        it 'creates a user' do
          subject
          expect{ subject }.to change { User.count }.by 1
        end
      end
    end

    context 'when request fails' do
    end
  end
end
