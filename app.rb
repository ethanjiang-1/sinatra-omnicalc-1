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

get "/payment/new" do
  erb :payment_new
end

get "/payment/results" do
  @apr      = params[:user_apr].to_f
  @apr_formatted = @apr.to_fs(:percentage, {:precision => 4})
  r        = @apr / (100.0 * 12.0)
  @years    = params[:user_years].to_i
  n        = @years * 12
  @pv       = params[:user_pv].to_f
  @principal = @pv.to_fs(:currency)
  @numerator   = r * @pv
  @denominator = 1 - (1 + r)**(-n)
  @payment     = @numerator / @denominator
  @payment_formatted = @payment.to_fs(:currency)
  erb :payment_results
end

get("/random/new") do
  erb :random_new
end

get("/random/results") do
  @min = params[:user_min].to_f
  @max = params[:user_max].to_f
  @random_number = rand(@min..@max)
  erb :random_results
end
