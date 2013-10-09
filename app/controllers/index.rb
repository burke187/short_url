get '/' do
  
  erb :index
end

post '/urls' do
  Url.create(link: params[:link])
  redirect('/')
end

get '/:short_link' do
  url_object = Url.where('short_link=?', params[:short_link])
  if url_object != []
    redirect("#{url_object[0].link}")
  else
    redirect("/")
  end
end
