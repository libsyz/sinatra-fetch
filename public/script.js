
const getData = document.querySelector('.data-deezer');


getData.addEventListener('click', (e) => {
  e.preventDefault();

  fetch('http://localhost:4567/deezer_data')
  .then((res) => res.json())
  .then((data) => console.log(data))
})
