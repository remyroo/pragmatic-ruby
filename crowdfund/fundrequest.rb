# frozen_string_literal: true

require_relative 'project'

class FundRequest
  attr_reader :title

  def initialize(title)
    @title = title
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def request_funding
    puts "There are #{@projects.size} projects that you could fund:"
    @projects.each { |p| puts p }

    @projects.each do |p|
      p.remove_funds(5)
      p.add_funds(20)
      puts p
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  p1 = Project.new('Project LMN', 3000, 500)
  projects = FundRequest.new('New Project')
  puts projects.title
  projects.add_project(p1)
  projects.request_funding
end
