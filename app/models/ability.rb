# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.role == "admin"
      return unless user.role == "admin"
      can :destroy, User do |other_user|
        other_user.id!=user.id
      end
      can :manage, User
      can :manage, Branch

    elsif user.role == "bank_personal"
      return unless user.role == "bank_personal"
      can :read, Branch
      can :read, Appointment
      can :update, Appointment
      can :read, User, role:"client"
    else
      return unless user.role == "client"
      can :create, Appointment
      can :read, Appointment, user_id:user.id
      can :update, Appointment, solved:false, user_id:user.id
      can :destroy, Appointment, solved:false, user_id:user.id
      can :read, User, user_id:user.id
      can :update, User, user_id:user.id
    end
    # Define abilities for the user here. For example:
    #
    #   return unless user.present?
    #   can :read, :all
    #   return unless user.admin?
    #   can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
