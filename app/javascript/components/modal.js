const modalPopUp = () => {
  // Get the modal
  const modalProducer = document.querySelectorAll("#myModal");
  // modalProducer.forEach(modal => {
  //   modal.addEventListener("click")
  // });
  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close")[0];

  // Get the button that opens the modal
  // const producers = document.querySelectorAll("#myproducer");
  // producers.forEach(producer => {
  //   producer.onclick = function () {
  //   modalProducer.style.display = "block";
  // }
  // });

  // When the user clicks on <span> (x), close the modal
  // span.onclick = function () {
  //   modalProducer.forEach(modal => {
  //     modal.classList.remove("display");
  //   });
  // }

};

export { modalPopUp };