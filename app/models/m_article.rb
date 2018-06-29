class MArticle
  include Mongoid::Document
  store_in collection: 'articles'

  field :article_id, type: Integer
  field :title, type: String
  field :page_count, type: Integer
  field :comment_count, type: Integer
  field :created_at, type: Time
end
