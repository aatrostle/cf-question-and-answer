class QuestionsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  def index
    @questions = Question.all

  end

  def new
    @question = Question.new

  end

  def create
    @question = Question.new(params[:question])
    @question.last_edited_by = current_user.id
    if @question.save
      flash[:notice] = "Question has been created."
      redirect_to @question
    else
      # nothing
    end
  end

  def show
    @question = Question.find(params[:id])
    @last_edited_by = User.find(@question.last_edited_by)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.last_edited_by = current_user.id
    if @question.update_attributes(params[:question])
      flash[:notice] = "Question has been updated."
      redirect_to @question
    else
      flash[:alert] = "Question has not been updated."
      render :action => "edit"
    end
  end

end
