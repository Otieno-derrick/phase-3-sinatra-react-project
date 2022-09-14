class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here



  get '/users' do
    users = User.all.order(:company_id)
    users.to_json(include: { company: {only: [:company]} })

   end


  post '/add' do
    user = User.create(name: params[:name],
      username: params[:username],
      email: params[:email],
      phone: params[:phone]),
    user.to_json(include: { company: {only: [:company]} })
  end




  patch '/users/:id' do
     users = User.find(params[:id])
     user.update(name: params[:name],
     username: params[:username],
     email: params[:email],
     phone: params[:phone])
     users.to_json(include: { company: {only: [:company]}})
  end


  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end
