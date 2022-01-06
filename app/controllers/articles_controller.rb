class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    title = params[:title]
    body = params[:body]
    new_article = Article.create(
      title:title,
      body:body,
      completed:false
    )
    redirect_to root_path
  end
  def edit
    @article = Article.find(params[:id])
  end

  # def update

  #   @article = Article.find(params[:id])

  #   if @article.update(article_params)
  #     redirect_to @article
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end
  def update
    completed = params[:completed]
    article = Article.find(params[:id])
    article.completed = completed
    article.save
    redirect_to root_path
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end