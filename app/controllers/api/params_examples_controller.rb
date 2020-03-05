class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    input_name = params["my_name"]
    @output_message = "#{input_name.upcase}"
    render "query_params.json.jb"
  end

  def name_action
    input_name = params["my_name"]
    if input_name[0].downcase == "a"
      @output_message = "Hey, #{input_name.capitalize}, I like your name because it starts with the first letter of the alphabet."
    else
      @output_message = "Your name sucks because it doesn't start with the letter a."
    end
    render "query_params.json.jb"
  end

  def guess_number_action
    answer = 88
    input_number = params["my_number"].to_i
    if input_number < answer
      @output_message = "Guess higher!"
    elsif input_number > answer
      @output_message = "Guess lower!"
    else
      @output_message = "You guessed the right number! #{answer} is the answer."
    end
    render "query_params.json.jb"
  end

  def login_action
    user_username = params["username"]
    user_password = params["password"]
    if user_username == "hugh" && user_password == "swordfish"
      @output_message = "Valid credentials."
    else
      @output_message = "Invalid credentials."
    end
    render "body_params.json.jb"
  end
end
