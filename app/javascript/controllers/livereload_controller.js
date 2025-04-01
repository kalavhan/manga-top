import { Controller } from "@hotwired/stimulus"
import { connectStreamSource, disconnectStreamSource } from "@hotwired/turbo"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  connect() {
    this.source = new EventSource("/rails/hotwire-livereload")
    this.subscription = createConsumer().subscriptions.create("HotwireReloadChannel", {
      connected: () => connectStreamSource(this.source),
      disconnected: () => disconnectStreamSource(this.source)
    })
  }

  disconnect() {
    if (this.subscription) this.subscription.unsubscribe()
    if (this.source) disconnectStreamSource(this.source)
  }
}

