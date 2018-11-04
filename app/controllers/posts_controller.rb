class PostsController < ApplicationController

    def index
        @posts = Post.all
        "index"
      end
    
      def show
        @post = Post.find(params[:id])
        "show"
      end

end