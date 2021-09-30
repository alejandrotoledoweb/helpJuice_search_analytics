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
    let input = event.target
    Rails.ajax({
      url: this.urlValue,
      type: "POST",
      data: new FormData(this.formTarget),
      success: (data) => {
        this.outputTarget.innerHTML = data;
        input = document.getElementById(input.id);
        this.moveCursorToEnd(input);
      },
    })
  }

  // https://css-tricks.com/snippets/javascript/move-cursor-to-end-of-input/
  moveCursorToEnd(element) {
    if (typeof element.selectionStart == "number") {
      element.focus();
      element.selectionStart = element.selectionEnd = element.value.length;
    } else if (typeof element.createTextRange != "undefined") {
      element.focus();
      var range = element.createTextRange();
      range.collapse(false);
      range.select();
    }
  }

}