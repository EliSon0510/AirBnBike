class BikePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def top?
    true
  end

  def create?
    true
  end

  def edit?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
