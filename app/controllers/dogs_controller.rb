class DogsController < ApplicationController

  def new
    @dog = Dog.new
    @owners = Owner.all.map { |o| [o.full_name, o.id]}
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to "/owners/#{@dog.owner_id}", notice: 'Dog was successfully registered'
    else
      render 'new'
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.update(params.require(:dog).permit(:dog_name, :breed, :owner_id))
      redirect_to owner_path(@dog.owner_id), notice: 'Dog was successfully edited'
    else
      render :edit
    end

  end
  def dog_params
    params.require(:dog).permit(:dog_name, :breed, :owner_id)
  end

end
