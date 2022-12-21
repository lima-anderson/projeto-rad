import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    

    toggle_status(e) {
        const id = e.target.dataset.id
        const csrfToken = document.querySelector("[name='csrf-token']").content

        fetch(`/reminders/${id}/toggle_status`, {
            method: 'POST',
            mode: 'cors',
            cache: 'no-cache',
            credentials: 'same-origin',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': csrfToken
            },
            body: JSON.stringify({ status: e.target.checked }) 
        })
          .then(response => response.json())
          .then(data => {
             alert(data.message)
           })
    }
}