const modalPopUp = () => {
  // Get the modal
  const modalProducer = document.getElementById("myModal");
  
  // Get the <span> element that closes the modal
  const span = document.getElementsByClassName("close")[0];

  // Get the button that opens the modal
  const producers = document.querySelectorAll("#myproducer");
  producers.forEach(producer => {
    producer.onclick = function () {
    modalProducer.style.display = "block";
  }
  });

  // When the user clicks on <span> (x), close the modal
  span.onclick = function () {
    modalProducer.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function (event) {
    if (event.target == modalProducer) {
      modalProducer.style.display = "none";
    }
  }
};

export { modalPopUp };