class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmark = List.new(bookmarks_params)
    @bookmark.save
    redirect_to bookmarks_path(@bookmark)
   end

private

   def bookmark_params
      params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end

end
