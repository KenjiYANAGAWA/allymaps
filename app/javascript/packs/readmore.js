const shortText = document.querySelector('.place-info-short');
const longText = document.querySelector('.place-info-long');
const readMoreBtn = document.querySelector('.readmore-btn');
const readMoreArrowBtn = document.querySelector('.readmore-arrow-btn');
const readLessBtn = document.querySelector('.readless-btn');
const readLessArrowBtn = document.querySelector('.readless-arrow-btn');

if (readMoreBtn) {
  readMoreBtn.addEventListener("click", (event) => {
    event.preventDefault();
    shortText.classList.add('hidden');
    longText.classList.remove('hidden');
  });
}
if (readMoreArrowBtn) {
  readMoreArrowBtn.addEventListener("click", (event) => {
    event.preventDefault();
    shortText.classList.add('hidden');
    longText.classList.remove('hidden');
  });
}
if (readLessBtn) {
  readLessBtn.addEventListener("click", (event) => {
    event.preventDefault();
    shortText.classList.remove('hidden');
    longText.classList.add('hidden');
  });
}
if (readLessArrowBtn) {
  readLessArrowBtn.addEventListener("click", (event) => {
    event.preventDefault();
    shortText.classList.remove('hidden');
    longText.classList.add('hidden');
  });
}
