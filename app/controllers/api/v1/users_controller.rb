class Api::V1::UsersController < ApplicationController
    # create action is defined to create a new user and saves to the DB
    def create
        user = User.new(user_params)
# if statement to check if user is successfully saved in the DB 
        if user.save
            render json: { status: 'success' }
        else
            render json: { status: 'error', errors: user.errors.full_messages}
        end
    end
#private method is initialized that allows only the defined parameters to be passed in the request
    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
