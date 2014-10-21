class ArticlesController < ApplicationController
	def new

	end

	def create
		@article = Article.new(article_params)

		my_text = @article.text.gsub(/\s+/m, ' ').strip.split(" ")
		my_text = my_text.sample(1)

		@article.text= my_text



		if @article.save

			redirect_to @article
		else
			render 'new'
			
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
