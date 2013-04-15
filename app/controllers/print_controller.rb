class PrintController < ApplicationController
  def index
    @page_title= "Print Samples"
    @samples = Sample.print
  end
end
