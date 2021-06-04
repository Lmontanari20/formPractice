class DogController < ApplicationController
    def index
        @dogs = Dog.all
    end
    
    def show
        @dog = Dog.find(id: params[:id])
    end

    def new 
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(name: params["name"], breed: params["breed"], bio: params[:bio], age: params[:age])
        if @dog.valid? 
            redirect_to dog_index_url
        else 
            flash[:errors] = @dog.errors.full_messages
            redirect_to new_dog_url
        end
    end

end