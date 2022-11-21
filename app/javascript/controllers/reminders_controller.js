import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        console.log(this.element)
    }

    toggle_status(e) {
        const id = e.target.dataset.id
        console.log('acertou')
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