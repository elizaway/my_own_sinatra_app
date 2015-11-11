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

