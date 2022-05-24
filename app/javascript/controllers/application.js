import { Application } from "@hotwired/stimulus"
import Carousel from "stimulus-carousel"

const application = Application.start()


// Configure Stimulus development experience
application.debug = false
application.register("carousel", Carousel)

window.Stimulus   = application

export { application }


 