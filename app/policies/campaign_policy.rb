class CampaignPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    true
  end

  def show?
    true
  end

  def download?
    true
  end

  def download_last?
    true
  end
end
