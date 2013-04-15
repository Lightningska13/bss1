class BrandingController < ApplicationController
  def index
    @page_title= "Brand/Marketing Samples"
    @samples = Sample.branding
  end
end
