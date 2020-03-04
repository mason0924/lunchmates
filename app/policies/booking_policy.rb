class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
   return record.event.user != user
  end

  def destroy?
    record.user == user
  end
end
