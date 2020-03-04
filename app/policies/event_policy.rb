class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def create?
    return show?
  end

  def update?
    event_creator?
  end

  def destroy?
    event_creator?
  end

  private

  def event_creator?
    record.user == user
  end
end
