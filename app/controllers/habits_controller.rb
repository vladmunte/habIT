class HabitsController < ApplicationController

  def index
    render json: Habit.all
  end

  def show
    habit = Habit.find(params[:id])
    render json: habit
  end

  def create
    habit = Habit.create(habit_params)
    render json: habit
  end

  def update
    habit = Habit.find(params[:id])
    habit.update(habit_params)
    render json: habit
  end

  def destroy
    habit = Habit.find(params[:id])
    habit.destroy
    render json: habit
  end


  private
  def habit_params
    api_params(:title, :description, :days_goal, :days_checked)
  end
end
