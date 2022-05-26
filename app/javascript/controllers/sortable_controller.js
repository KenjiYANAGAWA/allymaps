// docs: https://www.stimulus-components.com/docs/stimulus-sortable/
import Sortable from 'stimulus-sortable'

export default class extends Sortable {
  static targets = ['button']
  connect() {
    super.connect()

    // as soon as I visit the page, I remove the button after last destination
    this.buttonTargets.forEach((button) => {
      this.updateDirections(button)
      this.removeButton(button)
    })

    // The sortable.js instance.
    this.sortable
    // Your options
    this.options
    // Your default options
    this.defaultOptions
  }

  // as soon as I (drag and) drop, I update the directions of the buttons and remove the button after last destination
  end() {
    super.end()
    this.buttonTargets.forEach((button) => {
      this.updateDirections(button)
      this.removeButton(button)
    })
  }

  // You can set default options in this getter for all sortable elements.
  get defaultOptions() {
    return {
      animation: 500,
    }
  }

  // change the button url when the drag and drop ends
  updateDirections(button) {
    const fromAddress = button.dataset.address;
    const index = this.buttonTargets.indexOf(button);
    const nextButton = this.buttonTargets[index + 1];
    if (nextButton) {
      const toAddress = nextButton.dataset.address;
      button.href = `https://www.google.com/maps/dir/${fromAddress}/${toAddress}`;
    }
  }

  // for not display the button after last destination
  removeButton(button) {
    button.style.display = null;
    const lastButton = this.buttonTargets[this.buttonTargets.length - 1];
    lastButton.style.display = 'none';
  }
}
