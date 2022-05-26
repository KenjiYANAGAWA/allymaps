class DestinationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    true   # all users can access to this form
  end

  def create?
    record.itinerary.user == user # only owner of itinerary can add destination
  end

  def update?
    record.itinerary.user == user
  end
end
