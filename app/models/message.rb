class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title,     type: String
  field :content,   type: String
  field :is_hint,   type: Boolean
  field :tags,      type: Array

end
