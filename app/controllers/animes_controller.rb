class AnimesController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]


  def index
    @animes = Anime.all
  end

  def new
    @anime = Anime.new
  end

  def show

  end

    def edit

  end

  def create
    @anime = Anime.new(blog_params)

    if @anime.save
      redirect_to @anime
    else
      render :new
    end
  end

  def update
    if @anime.update(blog_params)
      redirect_to @anime
    else
      render :edit
    end
  end

  def destroy

    if @anime.destroy
      redirect_to animes_path
    else
      render @blog

    end

  end


  private

  def set_blog
    @anime = Anime.find(params[:id])
  end

  def blog_params
    params.require(:anime).permit(:title, :subtitle, :body)
  end
end
