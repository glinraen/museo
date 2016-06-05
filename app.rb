class Museo < Sinatra::Base

  	#general route actions
  	get '/' do
    	erb :index
  	end

	#shows all
 	get '/index' do
  		@museums = Museum.all
  	erb :index
  	end

	#adds new museum
	get '/museums/new' do
    	@museums = Museum.new
    erb(:"museums/new")
  	end

	#edits museum

	#deletes museum
  	delete '/museums/:id/delete' do
    	@museum = museum.find(params[:id])
    	if @museum.destroy
      		redirect('/museums')
    	else
      		redirect("/museums/#{@museum.id}")
    end
end
end
