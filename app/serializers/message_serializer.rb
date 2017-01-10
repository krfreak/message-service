class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :is_hint?, :tags

  def is_hint?
    object.is_hint
  end
end
