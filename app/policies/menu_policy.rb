class MenuPolicy < ApplicationPolicy
  def index?
    user.admin?
  end

  def show?
    user.admin?
  end

  def create?
    user.present? && user.admin?
  end

  def update?
    return true if user.present? && user.admin?
    user.present? && user == post.user
  end

  def destroy?
    user.present? && user.admin?
  end

  private

    def post
      record
    end
end
