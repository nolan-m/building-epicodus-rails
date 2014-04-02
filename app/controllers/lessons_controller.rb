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
      redirect_to('/lessons/')
    else
      render('lessons/index.html.erb')
    end
  end

  def show
    @lesson = Lesson.find_by(:slug => params[:slug])
    render('show.html.erb')
  end

  def edit
    @lesson = Lesson.find_by(:slug => params[:slug])
    render('lessons/show.html.erb')
  end

  def update
    @lesson = Lesson.find_by(:slug => params[:slug])
    if @lesson.update(params[:lesson])
      redirect_to("/lessons/#{@lesson.slug}")
    else
      render('lessons/show.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find_by(:slug => params[:slug])
    @lesson.destroy
    redirect_to('/lessons')
  end
end
