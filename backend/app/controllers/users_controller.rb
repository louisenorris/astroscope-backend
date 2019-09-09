class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            render json: { user: UserSerializer.new(user) }, status: :created
        else 
            render json: { errors: user.errors.full_messages }, status: not_accepted
        end
    end

    def show  
        user = User.find(params[:id])
        render ({json: { user: UserSerializer.new(user) }})
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :dob, :password)
    end
end
