class Admin::SelectsController < Admin::BaseController
    def index
        @article = Article.all
        render :layout => nil
    end
end