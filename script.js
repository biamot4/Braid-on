const form = document.querySelector('form')
const input = document.querySelectorAll('input')
const botao = document.querySelector('button')

botao.addEventListener('click', (event) => {
    event.preventDefault()
    const nomeCompleto = document.getElementById("nome").value
    const data = document.getElementById("input_data").value
    const horarios = document.getElementById("horarios").value
    const pix = document.getElementById("pix").checked
    const dinheiro = document.getElementById("dinheiro").checked
    const campoobrigatorio = document.querySelectorAll('.campoobrigatorio')


    campoobrigatorio.forEach(msg => {
        msg.style.display = 'none'
    })


    const formpreenchido = () => {
        let formok = true

        input.forEach(entrada => {
            if (entrada.value === '') {
                formularioValido = false
                campoobrigatorio.forEach((campo) => {
                    campo.style.display = 'block'
                })
            }
        })

        if (pix === false && dinheiro === false) {
            formok = false
            campoobrigatorio.forEach((campo) => {
                campo.style.display = 'block'
            })
        }
        return formok
    }


    if (formpreenchido()) {

        localStorage.setItem('nometela', nomeCompleto)
        localStorage.setItem('datatela', data)
        localStorage.setItem('horariotela', horarios)
        window.location.href = "index2.html"
        alert('Agendamento realizado com sucesso!')
    }
})