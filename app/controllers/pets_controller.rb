class PetsController < ApplicationController
  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index'
  end

  get '/pets/new' do
<<<<<<< HEAD
  @owners = Owner.all
=======
    @owners = Owner.all
>>>>>>> 8fcc30b18277ac622cccd4baca8d3ebcbbe02076
    erb :'/pets/new'
  end

  post '/pets' do
    @pet = Pet.create(params[:pet])
    if !params["owner"]["name"].empty?
<<<<<<< HEAD
       @pet.owner = Owner.create(name: params["owner"]["name"])
   else
     @pet.owner = Owner.find_by_id(params[:pet][:owner_id])
=======
       @pet.owners = Owner.create(name: params["owner"]["name"])
     else
   @pet.owner = Owner.find_by_id(params[:pet][:owner_id])
>>>>>>> 8fcc30b18277ac622cccd4baca8d3ebcbbe02076
     end
     @pet.save
      redirect to "pets/#{@pet.id}"
  end

<<<<<<< HEAD

  get '/pets/:id/edit' do
    @pet = Pet.find_by_id(params[:id])
    @owners = Owner.all
    erb :'/pets/edit'
  end

  get '/pets/:id' do
      @pet = Pet.find(params[:id])
      erb :'/pets/show'
    end

=======
  get '/pets/:id' do
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end

  post '/pets/:id' do
      @pet = Pet.find(params[:id])
      @pet.update(params["pet"])
      if !params["owner"]["name"].empty?
        @pet.owner = Owner.create(name: params["owner"]["name"])
      end
      @pet.save
      redirect "pets/#{@pet.id}"
    end

    get '/pets/:id/edit' do
      @pet = Pet.find(params[:id])
      erb :'/pets/edit'
    end

  patch '/pets/:id' do

   redirect to "pets/#{@pet.id}"
end
>>>>>>> 8fcc30b18277ac622cccd4baca8d3ebcbbe02076
end
