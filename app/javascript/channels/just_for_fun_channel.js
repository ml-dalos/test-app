import consumer from "./consumer"

document.addEventListener('turbolinks:load', () =>{
  const notify_block = document.getElementById('notify-block')


  consumer.subscriptions.create("JustForFunChannel", {
    connected() {
      console.log("Just for fun!")
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      console.log(data.message)
      let element = document.createElement('p')
      element.innerText = data.message
      notify_block.append(element)
    }
  });
})