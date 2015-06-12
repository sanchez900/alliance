class HomeController < ApplicationController
  def index
		@articles = Article.all
		@games = Game.all
  end
end
