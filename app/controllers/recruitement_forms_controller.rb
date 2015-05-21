class RecruitementFormsController < ApplicationController
  before_action :set_recruitement_form, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recruitement_forms = RecruitementForm.all
    respond_with(@recruitement_forms)
  end

  def show
    respond_with(@recruitement_form)
  end

  def new
    @recruitement_form = RecruitementForm.new
    respond_with(@recruitement_form)
  end

  def edit
  end

  def create
    @recruitement_form = RecruitementForm.new(recruitement_form_params)
    @recruitement_form.save
    respond_with(@recruitement_form)
  end

  def update
    @recruitement_form.update(recruitement_form_params)
    respond_with(@recruitement_form)
  end

  def destroy
    @recruitement_form.destroy
    respond_with(@recruitement_form)
  end

  private
    def set_recruitement_form
      @recruitement_form = RecruitementForm.find(params[:id])
    end

    def recruitement_form_params
      params.require(:recruitement_form).permit(:fname, :ingame_name, :email, :age, :country, :steam_id, :fb_id, :mastery_rank, :join_us)
    end
end
