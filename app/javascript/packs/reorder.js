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

// const hideLastButton = () => {
//   const directionButtons = document.querySelectorAll('#directionButton');
//   // console.log("direction butonssss: ", directionButtons);
//   let lastButton = directionButtons[directionButtons.length - 1];
//   lastButton.style.display = 'none';
//   // console.log("lastButton: ", lastButton);
//   const penultimoButton = directionButtons[directionButtons.length - 2];
//   penultimoButton.style.display = 'block';
// }

const setGoogleUrlAndTime = () => {
  const destinationCards = document.querySelectorAll('.thisisthefrucckingcard');
  destinationCards.forEach(async (card, index) => {   // we dont need to calculate for the last card so we slice the collection
    if (destinationCards[index + 1]) {
      const fromAddress = card.querySelector('.destination_card').dataset.address;
      const toAddress = destinationCards[index + 1].querySelector('.destination_card').dataset.address;
      // console.log("fromAddress", index, ": ", fromAddress);
      // console.log("toAddress", index, ": ", toAddress);
      const button = card.querySelector('.direction-button');
      button.href = `https://www.google.com/maps/dir/${fromAddress}/${toAddress}`;
      const timeDisplay = card.querySelector(".travel-time");
      timeDisplay.innerText = await getTravelTime(fromAddress, toAddress);
    }
  })
}
document.addEventListener('DOMContentLoaded', () => {
  // hideLastButton();  // hide the button below the last destination as soon as the page loads
  setGoogleUrlAndTime();
})

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
    // hideLastButton();
    setGoogleUrlAndTime();
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
    // hideLastButton();
    setGoogleUrlAndTime();
  })
})



// --------------------- GOOGLE MAPS API ----------------------------
const getTravelTime = async (fromAddress, toAddress) => {
  try {
    url = `/get_travel_time?from=${fromAddress}&to=${toAddress}`
    const res = await fetch(url);
    const data = await res.json();
    console.log(data.time);
    return data.time;
  } catch (e) {
    console.log("SOMETHING WENT WRONG!!!!!!", e)
  }
}