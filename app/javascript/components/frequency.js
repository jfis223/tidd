const frequency = () => {
  console.log("is this working")
  if(document.querySelector('.form-check-label.collection_check_boxes')) {


    const checkboxes = document.querySelectorAll("input.form-check-input")
    checkboxes.forEach((checkbox) => {
      checkbox.addEventListener("click", (event) => {
        if (checkbox.checked) {
          if (checkbox.labels[0].innerText == "Food") {
            checkbox.labels[0].insertAdjacentHTML("afterend", '<select class="freq form-control"><option>Daily</option><option>Weekly</option><option>Monthly</option></select>')
          }
          if (checkbox.labels[0].innerText == "Vet") {
            checkbox.labels[0].insertAdjacentHTML("afterend", '<select class="freq form-control"><option>Daily</option><option>Weekly</option><option>Monthly</option></select>')
          }
          if (checkbox.labels[0].innerText == "Walk") {
            checkbox.labels[0].insertAdjacentHTML("afterend", '<select class="freq form-control"><option>Daily</option><option>Weekly</option><option>Monthly</option></select>')
          }
          if (checkbox.labels[0].innerText == "Bath") {
            checkbox.labels[0].insertAdjacentHTML("afterend", '<select class="freq form-control"><option>Daily</option><option>Weekly</option><option>Monthly</option>></select>')
          }
        }
        console.log(checkbox.parentNode)

        if (!checkbox.checked) {
          if (checkbox.labels[0].innerText == "Food") {
            checkbox.parentNode.querySelector(".freq").remove()
          }
          if (checkbox.labels[0].innerText == "Vet") {
            checkbox.parentNode.querySelector(".freq").remove()
          }
          if (checkbox.labels[0].innerText == "Walk") {
            checkbox.parentNode.querySelector(".freq").remove()
          }
          if (checkbox.labels[0].innerText == "Bath") {
           checkbox.parentNode.querySelector(".freq").remove()
         }
        }
      })
    })
    //:const selection = document.querySelector("form-check-label collection_check_boxes")
    //selection.insertAdjacentHTML("beforeend", "<p>Weekly</p>")

  };
};

export { frequency };
