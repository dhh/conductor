module Conductor
  class Fixture
    FIXTURES_PATH = Rails.root.join("test", "fixtures")

    def initialize(path)
      @path = path
    end
    
    def content
      @content ||= File.open(FIXTURES_PATH.join(@path)).read
    end
 
    def content=(new_content)
      @content = new_content unless new_content.blank?
    end

    def path
      @path
    end
 
    def save
       puts "*"*100
       puts @path
       puts @content

      !!File.open(FIXTURES_PATH.join(@path), 'w') { |file| file.write(@content) }
    end
    
    def self.all
      Dir.chdir(FIXTURES_PATH) do
        Dir[File.join("**","*.yml")]
      end
    end
  end
end
