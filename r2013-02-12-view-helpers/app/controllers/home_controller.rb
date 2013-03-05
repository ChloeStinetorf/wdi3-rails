class HomeController < ApplicationController
  def home
  end
  def numbers
    @amount = 234
    @large_number = 9823428937
    @phone = 2126530489
  end
  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = "a very long time ago in a place far far away"
  end
  def assets
  end
  def url

  end
end
