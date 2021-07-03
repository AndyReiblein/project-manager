class RegistrationController < ApplicationController

    def new
        @registration = user.new
    end

end
