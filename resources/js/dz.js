import Dropzone from "dropzone";

Dropzone.autodiscover = false;

const dropzone = new Dropzone('#dropzone', {
  dictDefaultMessage: 'Sube aquí tu imagen',
  acceptedFiles: ".png,.jpg,.jpeg,.gif",
  addRemoveLinks: true,
  dictRemoveFile: 'Borrar Archivo',
  maxFiles: 1,
  uploadMultiple: false,

  init: function() {
    const filename = document.querySelector('[name="image"]').value.trim();
    if(filename) {
      const img = {
        'name': filename,
        'size': 1234};
      this.options.addedfile.call(this, img);
      this.options.thumbnail.call(this, img, `/uploads/${img.name}`);
      
      img.previewElement.classList.add('dz-success', 'dz-complete');
    }
  },
});

dropzone.on('success', function(file, response){
  document.querySelector('[name="image"]').value = response.imgName;
});

dropzone.on('removedfile', function () {
  document.querySelector('[name="image"]').value = '';
});