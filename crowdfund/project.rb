# frozen_string_literal: true

class Project
  attr_accessor :name
  attr_reader :funding, :target

  def initialize(name, target_funding_amount, funding = 0)
    @name = name
    @target = target_funding_amount
    @funding = funding
  end

  def to_s
    "#{@name} has $#{@funding} in funding towards a goal of $#{@target}."
  end

  def add_funds(value)
    @funding += value
    puts "#{@name} got more funds!"
  end

  def remove_funds(value)
    @funding -= value
    puts "#{@name} lost some funds!"
  end

  def total_funding_outstanding
    @target - @funding
  end
end

if __FILE__ == $PROGRAM_NAME
  project = Project.new('Project ABC', 5000, 1000)
  puts project.name
  puts project
  project.add_funds(10)
  project.remove_funds(1000)
  puts "Only $#{project.total_funding_outstanding} left to go!"
end
