class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    return show?
  end

  def create?
    return show?
  end

  def edit?
    record.user == user
  end

  def update?
    return edit?
  end

  def destroy?
    return edit?
  end

end
