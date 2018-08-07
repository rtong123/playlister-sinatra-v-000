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
    binding.pry
    @song = Song.create(name: params[name])
    @song.artist = Artist.find_or_create_by(name: params["Artist Name"])
    # @song.genres
    redirect to '/songs/:slug'
  end

  get '/songs/:slug/edit' do

  end





end
