class Notice::My::BaseController < RailsNotice.config.my_controller.constantize
  before_action :require_login

  def current_receiver
    @current_receiver ||= send(RailsNotice.config.current_receiver)
  end

end
