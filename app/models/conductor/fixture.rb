module Conductor
  class Fixture
    FIXTURES_PATH = Rails.root.join("test", "fixtures")

    def initialize(path)
      @file = File.open(File.join(FIXTURES_PATH, path))
    end

    def self.all
      Dir.chdir(FIXTURES_PATH) do
        Dir[File.join("**","*.yml")]
      end
    end
  end
end
