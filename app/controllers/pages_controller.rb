class PagesController < ApplicationController
  
  def home
    @title = "Lucid Dreaming is Yours!"
  end
  
  def about
    @title = "About"
  end
  
  def resources
    @title = 'Resources'
  end
  
  def forums
    @title = "Forums"
  end
  
end
