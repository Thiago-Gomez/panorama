class Ability
  include CanCan::Ability
 
  def initialize(user)
    if user
      if user.kind == 'observer'
        can :read, :all
        cannot :access, :rails_admin
      
      
       
       
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end
