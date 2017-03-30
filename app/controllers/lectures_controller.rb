class LecturesController < ActionController::API
  #include ActionController::RequestForgeryProtection

  def index
    response.headers['Access-Control-Allow-Origin'] = '*'
    lectures = Lecture.all.collect{|a| LectureSerializer.new(a)}
    render json: {lectures: lectures}
  end

end
