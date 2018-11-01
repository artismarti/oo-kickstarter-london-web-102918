
class Project
  attr_accessor :title, :backers
  @@projects = []

  def initialize(title)
    @title = title
    @backers = []

    @@projects << self
  end

  def add_backer(backer_name)
    @backers << backer_name
    backer_name.backed_projects << self
  end

  def self.projects
    @@projects
  end

end
