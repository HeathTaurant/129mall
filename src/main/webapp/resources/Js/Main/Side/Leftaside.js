const toggleBtn = document.querySelector(".navbar__toggleBtn");
const cancelBtn = document.querySelector(".navbar__cancelBtn");
const accordion = document.querySelector(".accordion");

toggleBtn.addEventListener("click", () => {
  accordion.classList.add("clicked");
  toggleBtn.classList.add("clicked");
  cancelBtn.classList.remove("clicked");
});

cancelBtn.addEventListener("click", () => {
  accordion.classList.remove("clicked"); 
  cancelBtn.classList.add("clicked");
  toggleBtn.classList.remove("clicked");
});
