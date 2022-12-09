import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
	static targets = ["submitbtn"]

	connect(){
		this.submitbtnTarget.hidden = true
	}

	remotesubmit(){
		this.submitbtnTarget.click()
	}

}
