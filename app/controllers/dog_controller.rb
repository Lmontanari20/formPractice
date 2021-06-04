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

    end

end