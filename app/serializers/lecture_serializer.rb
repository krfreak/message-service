class LectureSerializer < ActiveModel::Serializer
  type "lecture"
  attributes :id, :name, :shortName, :lecturer, :lectureDays, :excerciseDays, :semester, :onSchedule, :isMaster, :credits

  def id
    object.id.to_s
  end
end
