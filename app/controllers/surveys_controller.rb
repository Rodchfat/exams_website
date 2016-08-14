class SurveysController < ApplicationController

  before_filter :load_survey, :only => [:show, :edit, :update]
  #before_action :set_article, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]
  #before_action :require_same_user, only: [:edit, :update, :destroy]
  before_action :user_admin, only: [:edit, :update, :destroy]


  def index
    #@surveys = Survey::Survey.paginate(page: params[:page], per_page: 3)
    @surveys = Survey::Survey.all
  end

  def new
    @survey = Survey::Survey.new
  end

  def create
    @survey = Survey::Survey.new(survey_params)
    @survey.user_id = current_user
    if @survey.valid? && @survey.save
      default_redirect
    else
      render :action => :new
    end
  end

  def edit
  end

  def show
   @survey = Survey::Survey.find(params[:id]) 
  end

  def update
    if @survey.update_attributes(survey_params)
      default_redirect
      #redirect_to survey_path(params[:id])
    else
      render :action => :edit
    end
  end

  private

  def default_redirect
    redirect_to surveys_path, alert: I18n.t("surveys_controller.#{action_name}")
  end

  def load_survey
    @survey = Survey::Survey.find(params[:id])
  end

  def survey_params
    rails4? ? params_whitelist : params[:survey_survey]
  end

  def params_whitelist
    params.require(:survey_survey).permit(Survey::Survey::AccessibleAttributes)
  end
  
  def user_admin
      if current_user != !current_user.admin?
        redirect_to survey_path
      else 
        redirect_to surveys_path
      end
  end

end
