class HomeController < ApplicationController
  def index
    respond_to do |format|
      # return html format
      format.html
      # return amp format if exists
      format.amp do
        @amp_ready = true
        lookup_context.formats = [:amp, :html] # search .html and .amp template
        render
      end
    end
  end
end
