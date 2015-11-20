class ChaptersController < ApplicationController

  def new
    @prompt = Prompt.find(params[:prompt_id])
    @chapter = Chapter.new
  end

  def create
    @prompt = Prompt.find(params[:prompt_id])
    @chapter = @prompt.chapters.create(chapter_params.merge(user: current_user))
    redirect_to prompt_path(@prompt)
  end

  def edit
    @prompt = Prompt.find(params[:prompt_id])
    @chapter = Chapter.find(params[:id])
  end

  def update
    @prompt = Prompt.find(params[:prompt_id])
    @chapter = Chapter.find(params[:id])
    @chapter.update(chapter_params.merge(user:current_user))
    redirect_to prompt_path(@prompt)
  end

  def destroy
    @prompt = Prompt.find(params[:prompt_id])
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to prompt_path(@prompt)
  end

  private
  def chapter_params
    params.require(:chapter).permit(:body)
  end

end
