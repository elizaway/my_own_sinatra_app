get '/' do
  @owners = Owner.all
  erb :'owner/index'
end

get '/owners/new' do
  erb :'owner/new'
end

post '/owners' do
  owner = Owner.new(name: params[:name],
                    acquisition_date: params[:acquisition_date])
  if owner.save
    redirect('/')
  else
    redirect('/owners/new')
  end
end


get '/owners/:id' do
  @owner = Owner.find(params[:id])
  @jewels = @owner.jewels
  erb :'owner/show'
end

# stay in this controller to add second params jewels
# http://127.0.0.1:9393/owner/1/jewels/4
