class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @places = Place.where(accommodation: false)
    # Don't need policy_scope here bc pundit it's not applied to home (check application controller line20)
  end
end
