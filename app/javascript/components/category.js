const filterCategories = () => {

  const categories = document.querySelectorAll("#mycategory");
  categories.forEach(category => {
    category.addEventListener("click", (event) => {
      const categoryId = event.currentTarget.dataset.categoryId
      const cardProducts = document.querySelectorAll(".card-product")
      cardProducts.forEach(product => {
        product.classList.add("card-hidden")
        if (categoryId === product.dataset.categoryId) {
          product.classList.remove("card-hidden");
        };
      });
    });
  });
};

export { filterCategories };