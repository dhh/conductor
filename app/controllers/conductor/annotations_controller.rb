require 'rails/source_annotation_extractor'

module Conductor
  class AnnotationsController < ApplicationController
    # TODO: Make it include all the default annotation forms
    def index
      # TODO: Move SourceAnnotationExtractor from Railties to ActiveSupport::SourceAnnotationExtractor
      @notes = SourceAnnotationExtractor.new("TODO").find(File.join(Rails.root, 'app'))
    end
  end
end