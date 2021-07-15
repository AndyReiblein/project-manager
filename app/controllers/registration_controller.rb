class RegistrationController < ApplicationController
    before_action :authenticate_user!
    def new
        @registration = user.new
    end

end
