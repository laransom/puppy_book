class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to '/owners', notice: 'Dog was successfully registered'
    else
      render 'new'
    end
  end

  def index
    @owners = Owner.all
  end

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :dog_name, :dog_breed)
  end

end
