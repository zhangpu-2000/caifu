class MComment
  include Mongoid::Document
  store_in collection: 'comments'

  field :article_id, type: Integer
  field :comment_id, type: Integer
  field :user_avatar, type: String
  field :user_name, type: String
  field :content, type: String
  field :created_at, type: String
end
