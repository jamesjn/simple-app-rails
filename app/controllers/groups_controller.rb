
class GroupsController < ApplicationController
  respond_to :json, :html 

  def new
    @group = Group.new
  end

  def create
    group = Group.create!(params[:group])
    redirect_to group
  end

  def show
    @group = Group.find(params[:id])
    respond_with @group
  end 

  def index
    @groups = Group.all
    respond_with @groups
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      redirect_to @group
    else
      render :action => "edit"
    end
  end

end
