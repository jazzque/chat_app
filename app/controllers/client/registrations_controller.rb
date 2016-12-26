module Client
  class RegistrationsController < Devise::RegistrationsController
    def update
       # do something different here
    end

    def deactivate
      # not a standard action
      # deactivate code here
    end
  end
end