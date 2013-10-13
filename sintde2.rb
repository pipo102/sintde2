require 'rubygems'
require 'sinatra/base'
require 'sinatra/assetpack'

class Sintde2 < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :bind, '0.0.0.0'

  register Sinatra::AssetPack

  enable :inline_templates

  assets do
    serve '/js', from: 'app/js'
    serve '/css', from: 'app/css'
    serve '/image', from: 'app/image'

    css :cssapp, [
      '/css/*.css'
    ]

    js :jsapp, [
      '/js/*.js'
    ]

    css_compression :simple
    js_compression :jsmin
  end

  get '/' do    
    erb :index
  end

  run! if app_file == $0
end
