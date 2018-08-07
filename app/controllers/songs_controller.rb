require 'pry'
class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/new' do
    erb :'/songs/new'
  end

  get '/songs/:slug' do
    @songs = Song.all
    erb :'/songs/show'
  end

  post '/songs' do
    @song = Song.create(name: params[name])
    @song.artist
    redirect to '/songs/:slug'
  end

  get '/songs/:slug/edit' do

  end





end
