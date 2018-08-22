function toggleTabClass() {
  const tabs = document.querySelectorAll(".tab")
  tabs.forEach(function(tab){
    tab.addEventListener("click", function(e) {
      e.currentTarget.classList.toggle("active")
    })
  })
}

export { toggleTabClass }
