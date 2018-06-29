namespace :mtn do
  desc "import from mongodb"
  task import: :environment do
    MArticle.all.each do |ma|
      article = Article.where(id: ma.article_id).first_or_initialize
      article.id = ma.article_id
      article.title = ma.title
      article.page_count = ma.page_count
      article.comment_count = ma.comment_count
      article.created_at = ma.created_at
      article.save
    end

    MComment.all.each do |mc|
      comment = Comment.where(id: mc.comment_id).first_or_initialize
      comment.id = mc.comment_id
      comment.article_id = mc.article_id
      comment.user_avatar = mc.user_avatar
      comment.user_name = mc.user_name
      comment.content = mc.content
      comment.created_at = mc.created_at
      comment.save
    end
  end
end
