require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :square_new
end

get("/square/new") do
  erb :square_new
end

get("/square/results") do
  @input = params[:input].to_f
  @result = @input * @input
  erb :square_results
end
