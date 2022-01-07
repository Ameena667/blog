class ArticlesController < ApplicationController
  def index
    # @articles = Article.all
    # @todo = Todo.where(user_id : session[:current_user_id])
    @articles = Article.where(user_id: session[:current_user_id])
  end

  def show
    @article = Article.where(user_id: session[:current_user_id]).find(params[:id])
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
      completed:false,
      user_id: session[:current_user_id]
    )
    redirect_to articles_path
  end
  def edit
    @article = Article.find(params[:id])
  end

  def update
    completed = params[:completed]
    article = Article.where(user_id: session[:current_user_id]).find(params[:id])
    article.completed = completed
    article.save
    redirect_to articles_path
  end
  def destroy
    @article = Article.where(user_id: session[:current_user_id]).find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end