# frozen_string_literal: true

# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title, page_title.to_s)
    @show_title = show_title
  end

  def show_title?
    @show_title
  end

  def show_actions!
    @show_actions = true
  end

  def show_actions?
    @show_actions
  end

  def available_languages
    ActionView::Helpers::FormOptionsHelper::SUPPORTED_LANGUAGES
  end

  def ideal_reviews_burn(conference)
    conference.ideal_reviews_burn
  end

  def actual_reviews_burn(conference)
    conference.actual_reviews_burn
  end
end
