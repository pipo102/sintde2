require 'rubygems'
require 'bundler/setup'
Bundler.require

root=Fil.dirname(__FILE__)
app=File.join(root, "sintde2.rb")
require app

run Sintde2