import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating"

export default class extends Controller {
  connect() {
    console.log("hello")
    new StarRating(this.element)
  }

  applyRating(){
    console.log(this.element)
  }
}
