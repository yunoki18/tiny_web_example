# -*- coding: utf-8 -*-

require 'sinatra/base'

class WebApp < Sinatra::Base
  get '/' do
    @comments = Comment.dataset.all
    erb :index
  end

  post '/comment' do
    Comment.create(:display_name => params["display_name"],
                   :comment => params["comment"])
    redirect '/'
  end
end
