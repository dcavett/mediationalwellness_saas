class PagesController < ApplicationController

  def home
    @basic_plan = Plan.find(1)
    @pro_plan = Plan.find(2)
  end

  def about
  end
  
  def introduction
  end
  
  def week_one
  end
  
  def week_two
  end
  
  def week_three
  end
  
  def week_four
  end
  
  def week_five
  end
  
  def week_six
  end
  
  def week_seven
  end
  
  def week_eight
  end
  
  def mbsrManual
  end
  
  def gettingStarted
  end

end
