require 'source_annotation_extractor'

class Conductor::AnnotationsController < Conductor::BaseController
  # TODO: Make it include all the default annotation forms
  def index
    # TODO: Move SourceAnnotationExtractor from Railties to ActiveSupport::SourceAnnotationExtractor
    @notes = SourceAnnotationExtractor.new("TODO").find(File.join(Rails.root, 'app'))
  end
end
