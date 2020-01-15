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

  def sport_habits_days
    sport_habits = Habit.where(category: 'Sport')
    sport_habits_total_days = 0
    sport_habits.each do |habit|
      sport_habits_total_days += habit.days_checked
    end
    render json: sport_habits_total_days
  end

  def lifestyle_habits_days
    lifestyle_habits = Habit.where(category: 'Lifestyle')
    lifestyle_habits.each do |habit|
      lifestyle_habits_total_days += habit.days_checked
    end
    render json: lifestyle_habits_total_days
  end

  def financial_habits_days
    financial_habits = Habit.where(category: 'Financial')
    financial_habits.each do |habit|
      financial_habits_total_days += habit.days_checked
    end
    render json: financial_habits_total_days
  end

  def social_habits_days
    social_habits = Habit.where(category: 'Social')
    social_habits.each do |habit|
      social_habits_total_days += habit.days_checked
    end
    render json: social_habits_total_days
  end

  def culture_habits_days
    culture_habits = Habit.where(category: 'Culture')
    culture_habits.each do |habit|
      culture_habits_total_days += habit.days_checked
    end
    render json: culture_habits_total_days
  end


  private
  def habit_params
    api_params(:title, :description, :days_goal, :days_checked, :category)
  end
end
