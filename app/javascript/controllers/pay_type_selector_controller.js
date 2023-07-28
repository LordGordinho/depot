import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["selectPayType", "customFields"]
  static values = {
    payType: String
  }

  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  changeDisplayForm(){
    const payTypeIndex = this.selectPayTypeTarget.selectedIndex

    this.payTypeValue = this.selectPayTypeTarget.options[payTypeIndex].text
  }

  payTypeValueChanged(){
    const check = `
      <div>
        <div class="field">
          <label for="order_routing_number">Routing *</label>
          <input type="password" name="order[routing_number]" id="order_routing_number" />
        </div>
        <div class="field">
          <label for="order_account_number">Account *</label>
          <input type="text" name="order[account_number]" id="order_account_number" />
        </div>
      </div>
    `
    const credit_card = `
      <div>
        <div class="field">
          <label for="order_credit_card_number">CC *</label>
          <input type="password" name="order[credit_card_number]" id="order_credit_card_number" />
        </div>
        <div class="field">
          <label for="order_expiration_date">Expiry *</label>
          <input type="text" name="order[expiration_date]" id="order_expiration_date" size="9 placeholder="e.g. 03/19" />
        </div>
      </div>
    `    
    const purchase_order = `
      <div>
        <div class="field">
          <label for="order_po_number">PO *</label>
          <input type="password" name="order[po_number]" id="order_po_number" />
        </div>
      </div>
    `

    switch(this.payTypeValue ){
      case 'Check':
        this.customFieldsTarget.innerHTML = check
        break
      case 'Credit Card':
        this.customFieldsTarget.innerHTML = credit_card
        break 
      case 'Purchase order':
        this.customFieldsTarget.innerHTML = purchase_order
        break
      default:
        this.customFieldsTarget.innerHTML = '' 
    }
  }
}
