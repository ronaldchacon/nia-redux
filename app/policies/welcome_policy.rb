class WelcomePolicy < Struct.new(:user, :welcome)
  def index?
    true
  end

  def show?
    true
  end
end
