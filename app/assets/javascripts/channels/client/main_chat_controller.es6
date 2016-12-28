$(document).ready(() => {
  const messages = document.querySelector('button.btn');
  const new_message = document.querySelector('#new_message');
  const text = document.querySelector('textarea#message_body')
  messages.onclick = function(){
    App.main_chat.send_message(text.value)
  }
});

App.main_chat = App.cable.subscriptions.create({
  channel: 'MainChatChannel'
    }, {
    connected() {
    },
    disconnected() {
    },
    received(data) {
      console.log("RESPONSE")
    },
    send_message(message){
      return this.perform('send_message', {
        message
     })
    }

});
