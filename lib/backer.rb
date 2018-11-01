require 'pry'
class Backer
  attr_accessor :name, :backed_projects

  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []

    @@all <<  self
  end

  def self.all
    @@all
  end

  def back_project(project_title)
    @backed_projects << project_title
    project_title.backers << self
  end
end
