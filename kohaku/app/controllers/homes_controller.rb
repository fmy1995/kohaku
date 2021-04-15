class HomesController < ApplicationController

def top
  @posts = Post.page(params[:page]).reverse_order
  @genres = Genre.page(params[:page]).reverse_order
end

end