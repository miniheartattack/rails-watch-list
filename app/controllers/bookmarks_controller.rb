class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
        @bookmark = Bookmark.create(params[:restaurant])
        @bookmark.save
        redirect_to controllers_path
  end
end
