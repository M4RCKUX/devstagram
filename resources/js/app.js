
/* Confirmable */
document.addEventListener('submit', handleConfirmableSubmissions);
function handleConfirmableSubmissions (event) {
  const form = event.target;
  const confirmableInput = form.querySelector('.confirmable');
  if (confirmableInput) {
    const customMessage = confirmableInput.getAttribute('data-confirmation-message');
    const defaultMessage = 'Estás seguro?';
    const shouldProceed = confirm(customMessage || defaultMessage);
    if (!shouldProceed) {
      event.preventDefault();
    }
  }
}
