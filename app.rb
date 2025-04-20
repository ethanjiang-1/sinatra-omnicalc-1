require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :square_new
end

get("/square/new") do
  erb :square_new
end

get("/square/results") do
  @input = params[:user_number].to_f
  @result = @input * @input
  erb :square_results
end

get("/square_root/new") do
  erb :square_root_new
end

get("/square_root/results") do
  @input = params[:user_number].to_f
  @result = @input ** 0.5
  erb :square_root_results
end
