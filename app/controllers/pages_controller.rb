class PagesController < ApplicationController
  def index
  	@shit = ApplicationHelper.parseJSON
  end
end
