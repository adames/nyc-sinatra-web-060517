class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/landmarks/new'
  end

  post '/figures' do
    binding.pry
    # {"figure"=>{"name"=>"Alex"}, "title"=>{"name"=>"The great"}, "landmark"=>{"name"=>""}, "submit"=>"Create New Figure"}

    @title = Title.find_by_id(params[:titles])




  end

end
