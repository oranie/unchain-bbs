class SureController < ApplicationController

  include Concerns::DefaultPost

  def index
    @sures = Sure.order("updated_at DESC")
    @new_sure = Sure.new
    @new_sure.posts.build
  end

  def show
    @sure = Sure.find(params[:id])
    @posts = @sure.posts.order("created_at")
    @new_post = Post.new
  end

  def create
    fill_in_blank_params
    begin
      ActiveRecord::Base.transaction do
        @sure = Sure.create!(title: params[:title], post_count: 1)
        @sure.posts.create!(name: params[:name], content: params[:content])
      end
      redirect_to sure_show_path(@sure.id)
    rescue Exception => e
      p e
      redirect_to root_path
    end
  end
end
