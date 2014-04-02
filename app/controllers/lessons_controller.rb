class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('lessons/index.html.erb')
  end

  def create
    params[:lesson][:slug] = params[:lesson][:name].parameterize
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to(:back)
    else
      render('lessons/index.html.erb')
    end
  end

  def show
    @lesson = Lesson.find_by(:slug => params[:slug])
    render('show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:slug])
    render('lessons/show.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:slug])
    if @lesson.update(params[:lesson])
      render('lessons/index.html.erb')
    else
      render('lessons/show.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:slug])
    @lesson.destroy
    render('lessons/index.html.erb')
  end
end
