class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end 

  get '/new' do 
    erb :new
  end 

  post '/new' do 
    @recipe = Recipe.create(name: params[:recipe_name], ingredients: params[:recipe_ingredients], cook_time: params[:recipe_cook_time] )
    erb :show
  end
  
  get '/edit/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end 

  patch '/'



end
