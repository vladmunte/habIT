class NotesController < ApplicationController

  def index
    render json: Note.all
  end

  def show
    note = Note.find(params[:id])
    render json: note
  end

  def create
    note = Note.create(note_params)
    render json: note
  end

  def update
    note = Note.find(params[:id])
    note.update(note_params)
    render json: note
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render json: note
  end


  private
  def note_params
    api_params(:title, :description)
  end
end
