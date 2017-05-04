class ParamsExamplesController < ApplicationController
  def query
    @message = params["my_message"]
  end

  def url_segment
    @message = params["this_is_a_key"].to_i
    @number = 11
    @response = ""
    
    if @message == 11
      @response = "You got it!!"
    elsif @message < 11
      @response = "Guess higher!"
    elsif @message > 11
      @response = "Guess lower!"
    end
        
  end
end
