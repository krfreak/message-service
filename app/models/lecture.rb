class Lecture
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :name,            type: String
  field :shortName,       type: String
  field :lecturer,        type: String
  field :lectureDays,     type: Array, default: []
  field :excerciseDays,   type: Array, default: []
  field :semester,        type: Integer
  field :onSchedule,      type: Boolean
  field :isMaster,        type: Boolean
  field :credits,         type: Integer

end
