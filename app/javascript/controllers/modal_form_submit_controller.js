import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["close"]

  connect() {
  }

  clickClose() {
    this.closeTarget.click()
  }
}
