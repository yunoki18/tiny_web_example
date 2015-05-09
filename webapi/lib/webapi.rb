# -*- coding: utf-8 -*-

WEBAPI_ROOT = ENV['WEBAPI_ROOT'] || File.expand_path('../../', __FILE__)
require_relative 'webapi/version'
require_relative 'webapi/initializer'
require_relative 'webapi/configurations'
require_relative 'webapi/configurations/webapi'
require_relative 'webapi/endpoints/0.0.1/webapi'

module Webapi
  include Webapi::Initializer
  initializer_hooks {
    initializers_root = File.expand_path('config/initializers', ::WEBAPI_ROOT)

    @files.each { |file|
      if File.directory?(initializers_root)
        Dir.glob("#{initializers_root}/#{file}.rb") { |f|
          ::Kernel.load(f)
        }
      end
    }
  }
end
