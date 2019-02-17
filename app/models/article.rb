class Article < ActiveRecord::Base
    def article_link
        "#{created_at.month}-#{crated_at.day}-#{key}"
    end
end
