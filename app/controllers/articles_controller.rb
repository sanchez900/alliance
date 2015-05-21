class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def edit
	  @article = Article.find(params[:id])
	end

	def create
	  @article = Article.new(article_params)
	 
	  if @article.save
	    redirect_to @article
	    flash[:success] = 'Article was created.'


	  else
	  	flash[:danger] = "There was a problem creating a new article"
	    render 'new'
	  end
	end

	def update
	  @article = Article.find(params[:id])
	 
	  if @article.update(article_params)
	    redirect_to @article
	    flash[:success] = 'Article was updated.'

	  else
	  	flash[:danger] = "There was a problem updating the article"
	    render 'edit'
	  end
	end

	def show
		@article = Article.find(params[:id])
	end

	def destroy
	  @article = Article.find(params[:id])
	  @article.destroy
	 
	  redirect_to articles_path
	  flash[:success] = 'Article was successfully destroyed.'
	end

	private
		def article_params
			params.require(:article).permit(:title,:text)
		end

	end