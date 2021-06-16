
const formPetSelection = () => {

  const selection = document.getElementById("pet_type")
  selection.addEventListener('change', () => {

    if (selection.value === "dog") {
      const dog_selection = document.getElementById("dog_breeds")
      dog_selection.classList.add("pet_selection_active")
      const cat_selection = document.getElementById("cat_breeds")
      cat_selection.classList.add("pet_selection")
    }
    else {
      const cat_selection = document.getElementById("cat_breeds")
      cat_selection.classList.add("pet_selection")
      const dog_selection = document.getElementById("dog_breeds")
      dog_selection.classList.add("pet_selection_active")
    }
  });
};

export { formPetSelection };
