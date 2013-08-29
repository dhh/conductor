module Conductor
  class Fixture
    FIXTURES_PATH = Rails.root.join("test", "fixtures")

    def initialize(path)
      @content = File.open(FIXTURES_PATH.join(path)).read
    end
    def content
      @content
    end
    
    def self.all
      Dir.chdir(FIXTURES_PATH) do
        Dir[File.join("**","*.yml")]
      end
    end
  end
end
