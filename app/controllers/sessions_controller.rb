class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user&. authenticate(params[:password])
            session[:user_id] = user_id
            render json: { message: 'Logged in successfully'}, status: :ok
        else
            render json: { message: 'Invalid email or password'}, status: :unprocessable_entity
        end
    end
end
