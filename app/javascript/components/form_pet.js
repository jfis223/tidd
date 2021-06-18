
const formPetSelection = () => {

  if (document.getElementById("pet_species")) {
  const selection = document.getElementById("pet_species")

  selection.addEventListener('change', () => {
      if (selection.value === "dog") {
        const dog_selection = document.getElementById("dog_breeds")
        dog_selection.classList.toggle("pet_selection_active")
        const cat_selection = document.getElementById("cat_breeds")
        cat_selection.classList.toggle("pet_selection")
      }
      else {
        const cat_selection = document.getElementById("cat_breeds")
        cat_selection.classList.toggle("pet_selection")
        const dog_selection = document.getElementById("dog_breeds")
        dog_selection.classList.toggle("pet_selection_active")
      }
    });
  }
};

export { formPetSelection };
