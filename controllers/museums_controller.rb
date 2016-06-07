class Museo < Sinatra::Base	

  get '/museums' do
    @museums = Museum.all
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

	#edits museum
  get '/museum/:id/edit' do
    @museum = Museum.find(params[:id])
    erb :show
  end


	#deletes museum
  delete '/museums/:id' do
    @museum = museum.find(params[:id])
    @museum.destroy
      redirect('/museums')
  end
end