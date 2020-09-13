class PeopleController < ApplicationController
  before_action :find_person, only: [:edit, :show, :update, :destroy]
  def index
    @people = Person.where(nil)
    @filter = @people.filter_by_name(params[:name]) if params[:name].present?
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

  def above 
    @people = Person.where("age > 28")
  end
  def below 
    @people = Person.where("age <= 28")
  end

  private

  def person_params
    params.require(:person).permit(:name, :age)
  end

  def find_person 
    @person = Person.find(params[:id])
  end
end
