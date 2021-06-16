const modalSuccess = () => {
  // Get the modal
  const modal = document.getElementById("modal-success");

  // Get the button that opens the modal
  const btn = document.getElementById("myBtn");

  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close-success")[0];

  // When the user clicks the button, open the modal 
  if (btn) {
    btn.addEventListener("click", () => {
      modal.style.display = "block";
    });
  }

  // When the user clicks on <span> (x), close the modal
  if (span) {
    span.addEventListener("click", () => {
      modal.style.display = "none";
    });
  }

  // When the user clicks anywhere outside of the modal, close it
  window.addEventListener("click", (event) => {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  });
};

export { modalSuccess };