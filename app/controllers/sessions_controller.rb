class SessionsController < Authenticate::SessionController
  # render sign in screen
  def new
    # ...
  end

  def destroy
    logout
    redirect_to '/', notice: 'You logged out successfully'
  end
end