module SnsHelper
    def socail_media
        [
            ["Twitter", "twitter", "https://twitter.com/share?url=#{request.url}&text=#{@article.title}"],
            ["Facebook", "facebook", "https://www.facebook.com/sharer/sharer.php?u=#{request.url}&text=#{@article.title}"],
            ["LINE", "line", "http://line.me/R/msg/text/?#{request.url}&text=#{@article.title}"],
            ["Slack", "slack", "http://slackbutton.herokuapp.com/post/new/?url=#{request.url}&text=#{@article.title}"]
        ]
    end
end
