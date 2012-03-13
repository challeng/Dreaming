class PagesController < ApplicationController
  
  def home
    #@title = "Lucid Dreaming is Yours!"
    @activeHome = "active"
    @activeAbout= ""
    @activeForum = ""
    @activeResources = "" 
  end
  
  def about
    @title = "About"
    @activeHome = ""
    @activeAbout= "active"
    @activeForum = ""
    @activeResources = ""
  end
  
  def resources
    @title = 'Resources'
    @activeHome = ""
    @activeAbout= ""
    @activeResources = "active"
    @activeForum = ""

  end
  
  
  # def forums
  #   @title = "Forums"
  #   @activeHome = ""
  #   @activeAbout= ""
  #   @activeForum = "active"
  #   @activeResources = ""
  # end
  
end
