class DogsController < ApplicationController

  def new
    @dog = Dog.new
    @owners = Owner.all.map { |o| [o.full_name, o.id]}
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to '/owners', notice: 'Dog was successfully registered'
    else
      render 'new'
    end
  end

  def dog_params
    params.require(:dog).permit(:dog_name, :breed, :owner_id)
  end

end
