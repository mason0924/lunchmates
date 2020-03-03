class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
   user = current_user
  end

  def create?
    return true
  end

  def destroy?
    record.user == user
  end
end
