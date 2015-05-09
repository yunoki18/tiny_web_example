# -*- coding: utf-8 -*-

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'rubygems'
require 'webapi'

Webapi::Configurations.load Webapi::Configurations::Webapi

Webapi.run_initializers('sequel')

