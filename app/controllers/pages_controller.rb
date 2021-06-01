class PagesController < ApplicationController
  def home
    top_songs = RSpotify::Playlist.find('spotifycharts', '37i9dQZEVXbMDoHDwVN2tF')
    @top_albums = top_songs.tracks
                    .map(&:album)
                    .select { |a| a.album_type == 'album' }
                    .uniq!(&:name)
                    .first(10)
  end

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
