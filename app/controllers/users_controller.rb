class UsersController < ApplicationController
  before_action :find_by_id, only: [:show, :destroy, :update]
  
  def index
    @user=User.all
    render json: @user
  end
  
  def show
    render json: @user 
  end
  
  def create
    user=User.create(param_user)
    render json: user
  end

  def update
    @user.update(param_user)
    render json: @user
  end

  def destroy
    @user.destroy
    render json: @user
  end
  
  def param_user
    params.permit(:first_name,:last_name,:email,:college_id)
  end
  
  def find_by_id
    begin
      @user=User.find(params[:id])
    rescue
      render json: "User not found"
    end
  end
end
