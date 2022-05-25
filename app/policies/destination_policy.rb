class DestinationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    record.itinerary.user == user
  end

  def update?
    record.itinerary.user == user
  end
end
