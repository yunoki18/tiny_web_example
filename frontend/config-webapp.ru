# -*- coding: utf-8 -*-

require 'rubygems'
require 'sinatra'

$LOAD_PATH.unshift File.expand_path('..', __FILE__)

require 'webapp'
require 'models/comment'

run WebApp