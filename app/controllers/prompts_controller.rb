class PromptsController < ApplicationController

  def index
    @prompts = Prompt.all
  end

  def show
    @prompt = Prompt.find(params[:id])
  end

  def edit
    @prompt = Prompt.find(params[:id])
  end

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = Prompt.create!(prompt_params.merge(user: current_user))
    redirect_to prompt_path(@prompt)
  end

  def update
    @prompt = Prompt.find(params[:id])
    @prompt.update(prompt_params.merge(user:current_user))
    redirect_to prompt_path(@prompt)
  end

  def destroy
    @prompt = Prompt.find(params[:id])
    @prompt.destroy
    redirect_to prompts_path
  end

  private
  def prompt_params
    params.require(:prompt).permit(:title, :location, :time_period, :body)
  end

end
