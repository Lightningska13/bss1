class WebController < ApplicationController
  def index
    @page_title = "Web Samples"
    @samples = Sample.web
  end
end
