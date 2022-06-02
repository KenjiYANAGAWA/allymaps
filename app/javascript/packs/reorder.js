// // ---------------------------- ADD BUTTONS ---------------------------- //
// const destination_cards = document.querySelectorAll("#destination_card");
// // console.log("destinationss: ", destination_cards);

// const createButtons = () => {
//   destination_cards.forEach((card, index) => {
//     // console.log("cardddd: ", card);
//     if (Array.prototype.indexOf.call(destination_cards, card) !== destination_cards.length - 1) {   // means only NOT create the button after the last destination
//       const nextCard = destination_cards[index + 1];
//       // console.log("nextcard: ", nextCard);
//       const fromAddress = card.dataset.address;
//       const toAddress = nextCard.dataset.address;
//       // console.log("fromaddress: ", fromAddress);
//       // console.log("toaddress: ", toAddress);
//       const btnHtml = `
//       <div id="directionButton" class="d-flex justify-content-end">
//         <a href="https://www.google.com/maps/dir/${fromAddress}/${toAddress}" class="btn-route" target='_blank'>
//           <h6 class="mb-0"><i class="fas fa-map-marker-alt"></i>  Get directions</h6>
//         </a>
//       </div>`;
//       card.insertAdjacentHTML("afterend", btnHtml);
//     }
//   })
// }

// const deleteButtons = () => {
//   const directionButtons = document.querySelectorAll('#directionButton');
//   directionButtons.forEach((button) => {
//     button.remove();
//   })
// }

const hideLastButton = () => {
  const directionButtons = document.querySelectorAll('#directionButton');
  // console.log("direction butonssss: ", directionButtons);
  let lastButton = directionButtons[directionButtons.length - 1];
  lastButton.style.display = 'none';
  // console.log("lastButton: ", lastButton);
  const penultimoButton = directionButtons[directionButtons.length - 2];
  penultimoButton.style.display = 'block';
}
hideLastButton();  // hide the button below the last destination as soon as the page loads

const setGoogleUrl = () => {
  const directionButtons = document.querySelectorAll('#directionButton');
  directionButtons.forEach((button, index) => {
    const fromAddress = button.parentElement.previousElementSibling.children[0].dataset.address;
    const toAddress = button.parentElement.parentElement.nextElementSibling.children[0].children[0].dataset.address;
    // console.log("fromAddress", index, ": ", fromAddress);
    // console.log("toAddress", index, ": ", toAddress);
    button.href = `https://www.google.com/maps/dir/${fromAddress}/${toAddress}`;
  })
}

// --------------------- REORDER function with ARROWS --------------------- 
const upButtons = document.querySelectorAll('#button-up');
const downButtons = document.querySelectorAll('#button-down');

upButtons.forEach((upButton) => {
  upButton.addEventListener('click', (e) => {
    const card = e.currentTarget.parentElement.parentElement.parentElement.parentElement;
    if (!card.previousElementSibling) return   // not do for the first destination
    const parent = card.parentElement;
    const previousSibling = card.previousElementSibling;
    // console.log("card: ", card);
    // console.log("parent: ", parent);
    // console.log("previousSibling: ", previousSibling);
    const index = Array.prototype.indexOf.call(parent.children, card)
    // parent is only 1 element. We want a collection so we do parent.children(whic is a collection). And call it on an Array.prototype insead on an HTML collection bc indexOf doens't seem to be working on a prototype
    console.log({ index });
    parent.insertBefore(card, previousSibling);
    hideLastButton();
    setGoogleUrl();
  })
})

downButtons.forEach((downButton) => {
  downButton.addEventListener('click', (e) => {
    const card = e.currentTarget.parentElement.parentElement.parentElement.parentElement;
    if (!card.nextElementSibling) return      // not do for the last destination
    const parent = card.parentElement;
    const nextNextSibling = card.nextElementSibling.nextElementSibling;
    // console.log("card: ", card);
    // console.log("nextsibling: ", nextNextSibling);
    const index = Array.prototype.indexOf.call(parent.children, card)
    console.log({ index });
    parent.insertBefore(card, nextNextSibling);   // insertAfter is not supported yet
    hideLastButton();
    setGoogleUrl();
  })
})
