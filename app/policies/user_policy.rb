class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  # added 2021
  def update?
    current_user?
  end

  # added 2021
  private
  
  # added 2021
  def current_user?
    user == @user
  end
end
