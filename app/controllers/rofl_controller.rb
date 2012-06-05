
class RoflController < ApplicationController

  def show
    render :text => "hello"
  end
  
  def main
    render :text => "hi"
  end

end
