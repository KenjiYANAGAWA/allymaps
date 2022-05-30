class PlacePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(accommodation: false)
    end
  end

  def create?
    true
  end

  def show?
    true
  end
end
