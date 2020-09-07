class PeopleController < ApplicationController
  before_action :find_person, only: [:edit, :show, :update, :destroy]
  def index
    @people = Person.all
  end
  
  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to person_path(@person)
  end
  
  def new
    @person = Person.new()
  end

  def edit; end

  def show; end

  def update
    @person.update(person_params)
    redirect_to person_path(@person)
  end
  
  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :family_member, :pets)
  end

  def find_person 
    @person = Person.find(params[:id])
  end
end
