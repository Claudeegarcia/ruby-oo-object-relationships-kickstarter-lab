class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select do
            pb.project == self
        end
        project.collect do |each_backer|
            each_backer.backer
        end

    end
end
