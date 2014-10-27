class ArticlesController < ApplicationController
	
	def new

	end

	def create
		@article = Article.new(article_params)

		my_text = @article.text.split(" ")

		@article.text = my_text.sample

		



		if @article.save

			redirect_to articles_path
		else
			render 'new'
			
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	

	def index
		@articles = Article.order('created_at DESC').first(10)

	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
