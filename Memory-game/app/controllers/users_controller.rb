class UserController < ApplicationController

  def index
    render json: UserSerializer.new(User.all)
  end

  def show
    render json: User.find(params[:id]).to_json
  
  end

  # def new
  #   @user = User.new(user_params)
  # end

  def create
    @user = User.create(user_params)
    render json: @user.to_json
    
  end

  def destroy
    #want to remove the cat with id, and send back cat
    User.find(params[:id]).destroy
  end

  def update
    #want to update the cat with id, and send back cat
    Cat.find(params[:id]).update(cat_params)
    render json: Cat.find(params[:id]).to_json
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  # def update
  #   #want to update the cat with id, and send back cat
  #   User.find(params[:id]).update(user_params)
  #   render json: User.find(params[:id]).to_json
  # end


end
