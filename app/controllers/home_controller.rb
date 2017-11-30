class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      @amp_ready = true
      format.amp do
        lookup_context.formats = [:amp, :html] # search .html and .amp template
        render
      end
    end
  end
end
