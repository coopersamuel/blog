class TagsController < ApplicationController

    def new
        @post = Post.find(params[:post_id])
        @comment = @post.tags.create(params[:name])
        redirect_to post_path(@post)
    end

end
