class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
    render :index
    # Code for listing all surveys goes here.
  end

  def new
    @survey = Survey.new
    render :new
    # Code for new survey form goes here.
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to surveys_path
    else
      render :new
    end
    # Code for creating a new survey goes here.
  end

  def edit
    @survey = Survey.find(params[:id])
    render :edit
    # Code for edit survey form goes here.
  end

  def show
    @survey = Survey.find(params[:id])
    render :show
    # Code for showing a single survey goes here.
  end

  def update
    @survey = Survey.find(params[:id])
    if @survey.update(survey_params)
      redirect_to surveys_path
    else
      render :edit
    end
    # Code for updating an survey goes here.
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    redirect_to surveys_path
    # Code for deleting an survey goes here.
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :summary)
    end

end
