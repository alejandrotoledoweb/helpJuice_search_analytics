import Rails from "@rails/ujs"
import { Controller } from "stimulus"

export default class extends Controller {
  static targets  = [ "form", "output"]
  static values   = { url: String }

  handleChange(event) {
    Rails.ajax({
      url: this.urlValue,
      type: "SEARCH",
      data: new FormData(this.formTarget),
      success: (data) => {
        this.outputTarget.innerHTML = data;
      },
    })
  }

}