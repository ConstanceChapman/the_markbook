function scrollRight(){
  var el = document.getElementById("marks-index");
  if (el) {
    el.scrollLeft = el.scrollWidth - el.clientWidth;
  }
}

export { scrollRight };
