import consumer from "./consumer"

consumer.subscriptions.create("ProductsChannel", {
  connected() {
    console.log('connected')
  },

  disconnected() {
    console.log('disconnected')
  },

  received(data) {
    // console.log(data)
    // const storeElement = document.querySelector('main.stores')
    
    // if(storeElement) {
    //   storeElement.innerHTML = data.html
    // }
    
    // const productElement = document.getElementById(`product_id_${data.product_id}`)
    // console.log(productElement)

    // if(productElement){
    //   productElement.classList.add('product-highlight')
    // }
  }
});
