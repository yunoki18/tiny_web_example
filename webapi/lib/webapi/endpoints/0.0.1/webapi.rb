# -*- coding:utf-8 -*-

require 'sinatra/base'
require 'json'

module Webapi
  module Endpoints
    module V001
      class Webapi < Sinatra::Base
        def desc_api
          {:description => 'comments', :uri => request.url + '/comments'}
        end

        get '/' do
          {:api => desc_api}.to_json
        end

        post '/' do
          405
        end

        delete '/' do
          405
        end

        put '/' do
          405
        end

        error 405 do
          response.header['Allow'] = 'GET'
          {:code => 405, :message => "Method Not Allowed"}.to_json
        end
      end
    end
  end
end
