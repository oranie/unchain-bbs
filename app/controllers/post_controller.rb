class PostController < ApplicationController

  include Concerns::DefaultPost

  def create
    fill_in_blank_params
    begin
      ActiveRecord::Base.transaction do
        @post = Post.create!(
          sure_id: params[:sure_id],
          name: params[:name],
          content: params[:content]
        )
        @post.sure.update_attributes!(post_count: @post.sure.post_count + 1)
      end
      redirect_to sure_show_path(@post.sure.id)
    rescue Exception => e
      p e
      redirect_to root_path
    end
  end
end
