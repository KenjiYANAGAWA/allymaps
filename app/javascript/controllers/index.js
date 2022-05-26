// Load all the controllers within this directory and all subdirectories. 
// Controller files must be named *_controller.js.

import { definitionsFromContext } from "stimulus/webpack-helpers"
import { Application } from '@hotwired/stimulus'
import Sortable from 'stimulus-sortable'

const application = Application.start()
application.register('sortable', Sortable)

const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))