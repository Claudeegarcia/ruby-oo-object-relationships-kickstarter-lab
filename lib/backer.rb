class Baker

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBaker.new(project, self)
    end

    def backed_projects
        project = ProjectBacker.all.select do |pb|
            pb == self
        end

        project.collect do |each_project|
            each_project.project
        end
    end
end
