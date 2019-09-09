class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        user.starsign = (Starsign.all.find{|starsign| starsign.name == user.zodiac_sign})

        # how to assign the star sign
        # user.errors.full_messages
        user.save
        # byebug
        if user.valid?
            render json: { user: UserSerializer.new(user) }, status: :created
        else 
            render json: { errors: user.errors.full_messages }, status: :not_accepted
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
