require 'bundler'
Bundler.require

#ca c'était dans le cours, je l'ai copié collé hein
#l'idée étant ci-dessous de décrire un chemin bien défini a partir du lib qui formera la base de tous mes chemins 

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
run ApplicationController