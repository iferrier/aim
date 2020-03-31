require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'update' do
    # this is the "subject" you are testing. This makes a PUT request to users/:id with the necessary params
    subject { put :update, params: update_params }

    context 'when request is successful' do

      # let is a way of setting a memoized variable to test against.
      # it is lazily loaded (not evaluated until you call the variable)
      # in some cases you use let! to evaluate the block of code before the test example executes
      let(:user) { create(:user) }
      let(:name) { Faker.name }
      let(:update_params) {
        {
          id: user.id,
          user: {
            name: name
          }
        }
      }

      # These are hooks. They run before the example executes
      before do
        # This is a helper method from Devise. It signs in the mock user we have created so that
        # we can run the controller code
        sign_in user
      end

      it 'redirects to users#show' do
        # call the subject (i.e. PUT users/:id)
        subject
        # rspec returns a response object that you can assert against.
        # here we check that the response redirects to the user path
        expect(response).to redirect_to(user_path(user))
      end

      it 'updates user' do
        # call the subject (i.e. PUT users/:id)
        subject
        # reload the user in memory because it has been updated in the DB (you'd have a stale object otherwise)
        user.reload
        # assert that the name has changed to the params that you sent in the request
        expect(user.name).to eq name
      end
    end

    context 'when request fails' do
      context 'when user is not logged in' do
        # here we dont use the "sign_in" helper from devise so the request fails in the middleware
        let(:update_params) { { id: 'foo', user: {} } }

        it 'redirects to sign_in page' do
          subject
          # test that the response properly redirects to the sign_in page
          expect(response).to redirect_to new_user_session_path
        end
      end

      context 'when user does not exist' do
        let(:user) { create :user }
        let(:update_params) { { id: 'foo', user: {} } }

        before do
          sign_in user
        end

        # This shows you have an unhandled error in your code. That's why we test :)
        # when calling User.find('foo') (see the update_params above) it throws a record_not_found error.
        # you should consider catching this error and handling it gracefully
        # (perhaps redirect back to the update page) with an error message.
        #
        # something like:
        #
        # def update
        #   @user = User.find(params[:id])
        #   authorize @user
        #   @user.update(user_params)
        #   redirect_to user_path(@user)
        # rescue ActiveRecord::RecordNotFound
        #   flash[:alert] = "could not find user with id: #{params[:id]}"
        # end
        #
        it 'raises not_found error' do
          expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
        end
      end
    end
  end
end
