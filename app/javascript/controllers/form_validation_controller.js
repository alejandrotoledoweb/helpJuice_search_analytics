import Rails from "@rails/ujs"
import { Controller } from "stimulus"
const debounce = require('lodash.debounce');

export default class extends Controller {
  static targets  = [ "form", "output"]
  static values   = { url: String }

  initialize() {
    this.handleChange = debounce(this.handleChange, 500).bind(this)
  }

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