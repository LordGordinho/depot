import consumer from "./consumer"

consumer.subscriptions.create("ProductsChannel", {
  connected() {
    console.log('connected')
  },

  disconnected() {
    console.log('disconnected')
  },

  received(data) {
    const storeElement = document.querySelector('main.stores')
    if(storeElement) {
      storeElement.innerHTML = data.html
    }
  }
});
