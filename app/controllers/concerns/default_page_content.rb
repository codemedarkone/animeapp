module DefaultPageContent
  extend ActiveSupport::Concern

  included do
  before_filter :set_title_default
  end
  
  def set_title_default
    @page_title = "Anime | HQ Anime"
    @seo_keywords = "Chris Treshkove Anime"
  end
end