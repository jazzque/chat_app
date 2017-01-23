class MainChatController {
  init(){
    this.chat_channel = App.main_chat;
  }

  send_message(body){
    // Think about how to recieve messages
    // And how to get input (ng-model => input.gettext()) ??
    this.chat_channel.send_message("test_message")
    debugger;
  }
}

angular
  .module('Client')
  .controller('MainChatController', MainChatController);
