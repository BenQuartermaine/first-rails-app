class PagesController < ApplicationController

  def about
  end

  def home
    @m = ['Ben', 'Sam', 'Emmanual']
    @time = Date.today
  end

  def contact
  end

end
