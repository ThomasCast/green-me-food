const filterProducers = () => {
  const producers = document.querySelectorAll("#myproducer");
  producers.forEach(producer => {
    producer.addEventListener("click", (event) => {
      const producerId = event.currentTarget.dataset.producerId
      console.log("producer id", producerId)
      const modals = document.querySelectorAll("#myModal")
      modals.forEach(modal => {
        if (producerId === modal.dataset.producerId) {
          console.log("modal id", modal.dataset.producerId)
          modal.classList.add("display");
        };
        const spans = document.querySelectorAll(".close");
        spans.forEach(span => {
          span.addEventListener("click", (event) => {
            modal.classList.remove("display")
          });
        });
      });
    });
  });
  };

export { filterProducers };