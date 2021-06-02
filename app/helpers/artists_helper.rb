module ArtistsHelper
  def get_artists_link_collection(artists)
    artists.map do |artist| 
      link_to(artist.name, artist_path(artist.id))
    end.join(', ').html_safe
  end
end
