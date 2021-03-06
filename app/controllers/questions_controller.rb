class QuestionsController < ApplicationController
  before_action :authorize, only: [:create, :edit, :update, :destroy]
  
  def index
    @questions = Question.all
    @most_recent = Question.three_most_recent
    render :index
  end

  def new
    @question = Question.new
    render :new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question successfully added!"
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    flash[:notice] = "Question successfully updated!"
    render :edit
  end

  def show
    @question = Question.find(params[:id])
    render :show
  end

  def update
    @question= Question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Question successfully deleted!"
    redirect_to questions_path
  end

  private
    def question_params
      params.require(:question).permit(:quest_body, :author)
    end

end
