class AlbumsController < ApplicationController
  before_action :set_album, only: %i[show]

  def show; end

  private

  def set_album
    @album = RSpotify::Album.find(params[:id])
  end
end
