Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name_in_all_caps_url" => "params_examples#query_params_action"
    get "/query_params_url" => "params_examples#name_action"
    post "/number_game_url" => "params_examples#guess_number_action"
    get "/number_game_url/:my_number" => "params_examples#guess_number_action"
    post "/login_url" => "params_examples#login_action"
  end
end
