class WorksController < ApplicationController

  def create

    Work.create(work_attributes)

    redirect_to "/artists/#{work_attributes[:artist_id]}"
  end

  def edit
    @work = Work.find(params[:id])
    render partial: "workform", locals: { work_local: @work, artist_id: @work.artist.id }
  end

  def update
    work = Work.find(params[:id])

    work.update_attributes(work_attributes)

    redirect_to "/artists/#{work.artist.id}"
  end

  private

  def work_attributes
    params.require(:work).permit(:title, :medium, :year_finished, :image_url, :artist_id)
  end
end
