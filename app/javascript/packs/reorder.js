// ---------------------------- ADD BUTTONS ---------------------------- //
const destination_cards = document.querySelectorAll("#destination_card");
destination_cards.forEach((card, index) => {
  const nextCard = card.nextElementSibling;
  console.log("nextcard: ", nextCard);
  const fromAddress = card.dataset.address;
  const toAddress = nextCard.dataset.address;
  console.log(toAddress);
  const btnHtml = `
    <div class="d-flex justify-content-end">
      <a href="https://www.google.com/maps/dir/${fromAddress}/${toAddress}" class="btn-route" target='_blank'>
        <h6 class="mb-0"><i class="fas fa-map-marker-alt"></i>  Get directions</h6>
      </a>
    </div>`;
  card.insertAdjacentHTML("afterend", btnHtml);

})





// ---------------------------- REORDER ---------------------------- //
const upButtons = document.querySelectorAll('#button-up');
const downButtons = document.querySelectorAll('#button-down');


upButtons.forEach((upButton) => {
  upButton.addEventListener('click', (e) => {
    const card = e.currentTarget.parentElement.parentElement.parentElement;
    if (!card.previousElementSibling) return
    const parent = card.parentElement;
    const previousSibling = card.previousElementSibling;
    console.log("card: ", card);
    console.log("parent: ", parent);
    console.log("previousSibling: ", previousSibling);
    const index = Array.prototype.indexOf.call(parent.children, card)
    // parent is only 1 element. We want a collection so we do parent.children(whic is a collection). And call it on an Array.prototype insead on an HTML collection bc indexOf doens't seem to be working on a prototype
    console.log("index: ", index)
    parent.insertBefore(card, previousSibling);
  })
})

downButtons.forEach((downButton) => {
  downButton.addEventListener('click', (e) => {
    const card = e.currentTarget.parentElement.parentElement.parentElement;
    if (!card.nextElementSibling) return
    console.log("card: ", card);
    const parent = card.parentElement;
    const nextNextSibling = card.nextElementSibling.nextElementSibling;
    console.log(nextNextSibling);
    const index = Array.prototype.indexOf.call(parent.children, card)
    console.log("index: ", index)
    parent.insertBefore(card, nextNextSibling);   // insertAfter is not supported yer
  })
})
