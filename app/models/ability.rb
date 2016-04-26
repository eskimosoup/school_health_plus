class Ability
  
  include CanCan::Ability
  
  def self.roles(administrator)
    ret = %w{ site_admin }
    ret << 'souper' if administrator.role == 'souper'
    return ret
  end
  
  def initialize(user)
    if user.role == "souper"
      can :manage, :all
    elsif user.role == "site_admin"
      can :manage, :all
      cannot :manage, Manticore::Administrator, :role => "souper"
      cannot :create, Willow::Branch, :parent_id => nil
      cannot :make_root, Willow::Branch
    end
  end
  
end
