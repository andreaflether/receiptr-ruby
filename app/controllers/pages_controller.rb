class PagesController < ApplicationController
  def home; end

  def search
    @results = RSpotify::Base.search(params[:query], 'artist, album')
    @artists = filter_results_by('artist')
    @raw_album_results = filter_results_by('album')
    @albums = filter_raw_album_results
  end

  private

  def filter_results_by(type)
    @results.select { |result| result.type == type }
  end

  def filter_raw_album_results
    @raw_album_results.select do |result| 
      result.album_type == 'album' || result.tracks.count >= 4
    end
  end
end
