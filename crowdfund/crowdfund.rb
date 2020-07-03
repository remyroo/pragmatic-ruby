# frozen_string_literal: true

require_relative 'fundrequest'

p1 = Project.new('Project ABC', 5000, 1000)
p2 = Project.new('Project LMN', 3000, 500)
p3 = Project.new('Project XYZ', 75, 25)

projects = FundRequest.new('VC-Friendly Startup Projects')
puts projects.title
projects.add_project(p1)
projects.add_project(p2)
projects.add_project(p3)
projects.request_funding
