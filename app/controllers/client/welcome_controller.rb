module Client
  class WelcomeController < ApplicationController
    layout 'client'

    def index
      @messages = Message.last(2)
      @message = Message.new
    end
  end
end