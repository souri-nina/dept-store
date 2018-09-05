class DeptsController < ApplicationController
  before_action :set_dept, only: [:show, :update, :edit, :destroy]

  def index
    @depts = Dept.all
  end

  def show
    # render :show
  end

  def new
    @dept = Dept.new
    render partial: 'form'
  end

  def create
    @dept = Dept.new(dept_params)

    if @dept.save
      redirect_to depts_path
    else
      render :new
    end
  end

  def edit
    render partial: 'form'
  end

  def update
    if @dept.update
      redirect_to @dept
    else
      render :edit
    end
  end

  def destroy
    @dept.destroy
    redirect_to depts_path
  end


  private

  def set_dept
    @dept = Dept.find(params[:id])
  end

  def dept_params
    params.require(:dept).permit(:name)
  end

end

