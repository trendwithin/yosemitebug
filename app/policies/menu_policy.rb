class MenuPolicy < ApplicationPolicy
  def index?
    true
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
