class Museo < Sinatra::Base	

set :public_folder, 'public'

  #gets index or query
  get '/museums' do
    p params[:query]
    if params[:query] && !params[:query].empty?
      @museums = Museum.where(specialty: params[:query].capitalize)
    else
      @museums = Museum.all
    end
    erb :index
  end

  #adds new museum entry
	get '/museums/new' do
    @museums = Museum.new
    erb :new
  end

  post '/museums' do 
    @museum = Museum.create(params[:museum])
    @museum.save
    redirect '/'
  end

  #show/view one museum
  get '/museums/:id' do
    @museum = Museum.find(params[:id])
    erb :show
  end

  get '/museums/:id/edit' do
    @museum = Museum.find(params[:id])
    erb :edit
  end

	#edits /updates museum entry
  put '/museums/:id' do
    @museum = Museum.find(params[:id])
    @museum.update_attributes(params[:museum])
    redirect to "/museums"
  end

	#deletes museum entry
  delete '/museums/:id' do
    @museum = Museum.find(params[:id])
    @museum.destroy
    redirect to "/museums"
  end
end