class ArticlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	def index
		@articles = Article.last(4)
	end
	def new
		
	end
	def create
		@article = Article.new(params.require(:article).permit(:title, :text))
		@article.save
		redirect_to @article
	end
	def show
		@article = Article.find(params[:id])
	end
	def destroy
		Article.find(params[:id]).destroy
	end

end
