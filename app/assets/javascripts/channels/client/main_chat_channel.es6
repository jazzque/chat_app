App.main_chat = App.cable.subscriptions.create({
  channel: 'MainChatChannel'
    }, {
    connected() {
    },
    disconnected() {
    },
    received(data) {
      // Think about dynamic return to controller
      this.returns.push(data);
    },
    send_message(message){
      return this.perform('send_message', {
        message
     });
    }
});
