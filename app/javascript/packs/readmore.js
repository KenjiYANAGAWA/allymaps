const shortText = document.querySelector('.place-info-short');
const longText = document.querySelector('.place-info-long');
const readMoreBtn = document.querySelector('.readmore-btn');
const readMoreArrowBtn = document.querySelector('.readmore-arrow-btn');
const readLessBtn = document.querySelector('.readless-btn');
const readLessArrowBtn = document.querySelector('.readless-arrow-btn');

readMoreBtn.addEventListener("click", (event) => {
  event.preventDefault();
  shortText.classList.add('hidden');
  longText.classList.remove('hidden');
});
readMoreArrowBtn.addEventListener("click", (event) => {
  event.preventDefault();
  shortText.classList.add('hidden');
  longText.classList.remove('hidden');
});
readLessBtn.addEventListener("click", (event) => {
  event.preventDefault();
  shortText.classList.remove('hidden');
  longText.classList.add('hidden');
});
readLessArrowBtn.addEventListener("click", (event) => {
  event.preventDefault();
  shortText.classList.remove('hidden');
  longText.classList.add('hidden');
});
