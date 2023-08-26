import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="conversation-subscription"
export default class extends Controller {
  static values = { conversationId: Number }
  static targets = ["messages"]

  connect() {
    console.log(`Subscribed to the conversation with the id ${this.conversationIdValue}.`)

    this.channel = createConsumer().subscriptions.create(
      { channel: "ConversationChannel", id: this.conversationIdValue },
      { received: (data) => {
      this.messagesTarget.insertAdjacentHTML("beforeend", data)
      console.log(this.messagesTarget.scrollHeight)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
      console.log("ciaoooo")
    } }
    )
  }

  disconnect() {
    console.log("Unsubscribed from the conversation")
    this.channel.unsubscribe()
  }

  resetForm(event) {
    event.target.reset()
  }
}
