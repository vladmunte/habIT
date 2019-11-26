class RemindersController < ApplicationController

  def index
    render json: Reminder.all
  end

  def show
    reminder = Reminder.find(params[:id])
    render json: reminder
  end

  def create
    reminder = Reminder.create(reminder_params)
    render json: reminder
  end

  def update
    reminder = Reminder.find(params[:id])
    reminder.update(reminder_params)
    render json: reminder
  end

  def destroy
    reminder = Reminder.find(params[:id])
    reminder.destroy
    render json: reminder
  end


  private
  def reminder_params
    api_params(:title, :description, :date)
  end
end
