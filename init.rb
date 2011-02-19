require 'stakr/browser_helpers/browser'

ActionView::Base.class_eval do
  include Stakr::BrowserHelpers::Browser
end
