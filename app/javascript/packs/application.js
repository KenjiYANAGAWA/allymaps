// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

import { Tooltip } from "bootstrap"
// Tooltip global activation
const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new Tooltip(tooltipTriggerEl))

const showCircle = (cursor, seconds) => {
  // console.log(cursor);
  const circle = document.createElement("div");
  circle.style.position = "fixed";
  circle.style.backgroundColor = "grey";
  circle.style.borderRadius = "50%";
  circle.style.left = `${cursor.clientX - 16}px`;
  circle.style.top = `${cursor.clientY - 16}px`;
  circle.style.height = "32px";
  circle.style.width = "32px";
  circle.style.opacity = 0.8;
  document.body.appendChild(circle);
  setTimeout(() => {
     circle.remove();
  }, seconds * 500);
};

document.addEventListener("touchmove", (event) => {
  showCircle(event.targetTouches[0], 0.1);
});
document.addEventListener("click", (event) => {
  showCircle(event, 1);
});
