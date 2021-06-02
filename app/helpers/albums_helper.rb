module AlbumsHelper
  def album_length(double = false)
    Time.at(album_length_to_seconds(double))
  end

  def album_length_to_seconds(double = false)
    double ? (total_album_length * 2)/1000 : total_album_length/1000
  end

  def total_album_length
    @album.tracks.map(&:duration_ms).sum
  end

  def get_formatted_track_length(duration_ms)
    Duration.new(Time.at(duration_ms / 1000)).format("%m:%S")
  end
end
