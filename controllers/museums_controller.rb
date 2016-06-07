class Museo < Sinatra::Base	

set :public_folder, 'public'

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




	#deletes museum
  delete '/museums/:id' do
    @museum = museum.find(params[:id])
    @museum.destroy
      redirect('/museums')
  end
end