class CollegesController < ApplicationController
  before_action :find_by_id,only: [:show,:update,:destroy]
  def index
    college=College.all
    render json: college
  end
  
  def show
    render json: @college
  end
  
  def create
    college=College.new(param_college)
    if college.save
      render json: college
    else
      render json: "unsuccessful to add college"
    end
  end
  
  def destroy
    @college.destroy
    render json: @college
  end
  
  def update
    @college.update(param_college)
    render json: @college
  end
  
  def param_college
    params.permit(:college_name)
  end
  
  def find_by_id
    begin
      @college=College.find(params[:id])
    rescue
      render json: "College not found"
    end
  end
end
