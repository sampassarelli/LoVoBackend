class Api::V1::UsersController < ApplicationController

  def show
    user = User.find_by_id(params[:id])
    render json: user
end

def create
    user = User.new(user_params)
    if user.save 
        render json: user
    else 
        render json: {error: user.errors.full_messages}
    end
end

def update
    user = User.find_by_id(params[:id])
    if user.update(user_params)
        render json: user
    else 
        render json: {error: user.errors.full_messages}
    end
end

def destroy
    user = User.find_by_id(params[:id])
    if user.destroy
        render json: user
    else
        render json: {error: "Something went wrong, cannot delete user."}
    end
end

private 

def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
end

end
end
