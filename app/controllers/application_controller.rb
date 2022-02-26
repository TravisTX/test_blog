class ApplicationController < ActionController::Base
  def index
    outcome = Teams::Index.run
    pp outcome.errors.class # prints `ActiveInteraction::Errors`
    pp outcome.errors
    pp outcome.errors.first.class # prints `Array`
    pp outcome.errors.first # prints `[:base, "foo"]`

    head :no_content
  end
end
