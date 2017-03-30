class MessageSerializer < ActiveModel::Serializer
  type "message"
  attributes :id, :title, :content, :isHint, :tags, :createdAt

  def id
    object.id.to_s
  end

  def isHint
    object.is_hint
  end

  def createdAt
    object.created_at
  end
end
