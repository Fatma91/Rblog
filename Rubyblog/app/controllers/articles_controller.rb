class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:Article]
    if @article.save
      redirect_to articles_path
    else
      render :action => 'new'
    end
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    @article = Article.find params[:id]
    if @article.update_attributes params[:post]
      redirect_to articles_path
    else
      render :action => :edit
    end
  end

  def destroy
    @article = Article.find params[:id]
    @article.destroy
    redirect_to articles_path
  end

  def show
    @article = Article.find params[:id]
  end

end
