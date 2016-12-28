module Client
  class WelcomeController < ApplicationController
    layout 'client'

    def index
      @messages = Message.all.limit(5)
      @message = Message.new
    end
  end
end