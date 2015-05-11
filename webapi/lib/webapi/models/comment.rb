# -*- coding: utf-8 -*-

module Webapi
  module Models
    class Comment < Sequel::Model
      plugin :timestamps, :update_on_create => true
    end
  end
end
