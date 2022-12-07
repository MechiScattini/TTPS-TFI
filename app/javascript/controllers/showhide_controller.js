import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="showhide"
export default class extends Controller {
  static targets = ["input", "output"]
  static values = { showIf: String }
  connect() {
    this.outputTarget.hidden = false
  }

  toggle(){
    if (this.inputTarget.value != this.showIf.value){
      this.outputTarget.hidden = true
    } else if (this.inputTarget.value = this.showIf.value){
      this.outputTarget.hidden = false
    }
  }
}
