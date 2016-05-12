get '/tags' do
  @tags = Tag.all
  erb :'tags/index'
end

get '/tags/:id' do
  @tag = Tag.find(params[:id])
  @tagged_questions = @tag.questions
  erb :'tags/show'
end
