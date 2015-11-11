get '/' do
  @jewels = Jewel.all
  erb :'index'
end

get '/jewels/new' do
  erb :'new'
end

get '/jewels/:id' do
  @jewel = Jewel.find(params[:id])
  erb :'show'
end

post '/jewels' do
  Jewel.new(mineral: params[:mineral], facets: params[:facets], location: params[:location]).save
  redirect('/')
end

get '/jewels/:id/edit' do
  @jewel = Jewel.find(params[:id])
  erb :'edit'
end

put '/jewels/:id' do
  @jewel = Jewel.find(params[:id])
  # puts(params)
  hsh={
    mineral: params[:mineral],
    facets: params[:facets],
    location: params[:location]
  }
  @jewel.update_attributes(1)
  redirect("/jewels/#{@jewel.id}")
end

