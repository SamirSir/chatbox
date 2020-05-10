import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
   console.log("Hey your action cable is running !");
 },

  disconnected() {
  	console.log("You are now disconnected to the chat channel!");

    // Called when the subscription has been terminated by the server
  },

  received(data) {
    var messages = $('#chatbox');
  	messages.append(data['message']);
  	messages.scrollTop(messages[0].scrollHeight);   
  }
});
