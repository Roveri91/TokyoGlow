class EventPolicy < ApplicationPolicy
  class Scope < Scope
  # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all # same as saying Event.all
      # scope.where(user: user) # get only events made by user
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    record.user == user # record - the event instance
  end

  def destroy?
    record.user == user
  end

  def status_change?
    true
  end
end
