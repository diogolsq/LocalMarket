class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

  end

  def new?
      # Who can see a restaurant?
      # Also anyone
      #user_is_seller? # real script
      true
  end


  def show?
      # Who can see a restaurant?
      # Also anyone
      true
  end

  def create?
    # Who can create a restaurant?
    # anyone!
    user_is_seller?
  end

  def update?
    # The same logic as destroy
    # Who can update a restaurant?
    # The owner
    user_is_seller? && record.user == user
  end

  def destroy?
    # Who can destroy a restaurant?
    # Only the admin
    user_is_seller? || user_is_admin?
  end

  private

  def user_is_seller?
    user.seller
  end

  # def user_is_admin?
  #   user.admin?
  # end
end

