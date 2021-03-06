get '/jewels' do
  @owners = Owner.all
  erb :'index'
end

get '/jewels/new' do
  erb :'jewel/new'
end

get '/jewels/:id' do
  @jewel = Jewel.find(params[:id])
  erb :'jewel/show'
end

post '/jewels' do
  jewel = Jewel.new(params[:jewel])

  if jewel.save
    redirect('/')
  else
    raise Exeception.new('You blew it')
  end
end

get '/jewels/:id/edit' do
  @jewel = Jewel.find(params[:id])
  erb :'jewel/edit'
end

put '/jewels/:id' do
  @jewel = Jewel.find(params[:id])
  # puts(params)
  hsh={
    mineral: params[:mineral],
    facets: params[:facets],
    location: params[:location]
  }
  @jewel.update_attributes(hsh)
  redirect("/jewels/#{@jewel.id}")
end

delete '/jewels/:id' do
  @jewel = Jewel.find(params[:id])
  @jewel.destroy
  redirect("/")
end
