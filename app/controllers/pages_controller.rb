# app/controllers/pages_controller.rb

class PagesController < ApplicationController
  def home
    render({ template: 'page_templates/index' })
  end

  def roll
    dice = params.fetch('num_of_dice')
    sides = params.fetch('num_of_sides')

    @dice = dice.to_i
    @sides = sides.to_i
    @rolls = []

    @dice.times { @rolls.push(roll = rand(1..@sides)) }

    render({ template: 'page_templates/roll' })
  end
end
