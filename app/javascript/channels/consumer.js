// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.

import { createConsumer } from "@rails/actioncable"
import { navbar } from "app/javascript/partials/header"
export default createConsumer()

navbar()
