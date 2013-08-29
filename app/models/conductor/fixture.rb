module Conductor
  class Fixture
    def self.files
      @files=[]
      #Dir[Rails.root.join("test/fixtures/**/*.yml")].each { |f|  @files << f }
      Dir["test/fixtures/**/*.yml"].each { |f|  @files << f }
      @files
	end
  end
end