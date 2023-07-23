const btnChangeImg = document.querySelector('#change_img');
const inputImage = document.querySelector('[name="image"]');
const dropzoneContainer = document.querySelector('#dropzone_container');
const imageContainer = document.querySelector('#image_container');

btnChangeImg.addEventListener('click', handleChangeImg);


function handleChangeImg(event) {
  if(btnChangeImg.dataset.effect == 'change') {
    dropzoneContainer.classList.remove('hidden');
    imageContainer.classList.add('hidden');
    while (imageContainer.firstChild) {
      imageContainer.removeChild(imageContainer.firstChild);
    }  
  }
}