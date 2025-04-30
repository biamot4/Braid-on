describe('Agendamento do usuário', () => {
  beforeEach(() => {
    cy.visit('index.html')
  })
  it('Agendamento com informações válidas', () => {
    cy.get('#nome').type('"Pedro Emanoel Alves Dias')
    cy.get('#input_data').type('2025-05-22')
    cy.get('#horarios').select('11:00')
    cy.get('#pix').check()
    cy.get('#Trancanago').check()
    cy.get('.agendar').should('have.text', 'Agendar!').click()
    cy.on('window:alert', (alerta) => {expect(alerta).to.equal('Agendamento realizado com sucesso!')})
  })

  it('Redirecionamento da página de agendamento para a página de confirmação', () => {
    cy.get('#nome').type('"Pedro Emanoel Alves Dias')
    cy.get('#input_data').type('2025-05-22')
    cy.get('#horarios').select('11:00')
    cy.get('#pix').check()
    cy.get('#Trancanago').check()
    cy.get('.agendar').should('have.text', 'Agendar!').click()
    cy.on('window:alert', (alerta) => {expect(alerta).to.equal('Agendamento realizado com sucesso!')})
    cy.url().should('include', 'index2.html')
  })

  it('Agendamento com campos obrigatórios vazios', () =>{
    cy.get('input').should('have.text', '')
    cy.get('#horarios').should('not.be.selected')
    cy.get('.agendar').click()
    cy.get('.campoobrigatorio').should('be.visible')
  })
})

describe('Confirmação do agendamento do usuário', () => {
  it('Confirmação das informações do agendamento', () => {
    cy.visit('index.html')
    cy.get('#nome').type('Beatriz Mota')
    cy.get('#input_data').type('2025-05-22')
    cy.get('#horarios').select('11:00')
    cy.get('#pix').check()
    cy.get('#Trancanago').check()
    cy.get('.agendar').should('have.text', 'Agendar!').click()
    cy.on('window:alert' , (alerta) => {expect (alerta).to.equal('Agendamento realizado com sucesso!')})
    cy.url().should('include', 'index2.html')
    cy.get('.1').should('have.text', 'A sessão de')
    cy.get('.1').should('be.visible')
    cy.get('.nomecliente').should('have.text', 'Beatriz Mota')
    cy.get('.nomecliente').should('be.visible')
    cy.get('.2').should('have.text', 'Foi agendada para o dia')
    cy.get('.2').should('be.visible')
    cy.get('.datacliente').should('have.text', '2025-05-22')
    cy.get('.datacliente').should('be.visible')
    cy.get('.3').should('have.text', 'às')
    cy.get('.3').should('be.visible')
    cy.get('.horariocliente').should('have.text', '11:00')
    cy.get('.horariocliente').should('be.visible')
  })

  it('Teste da navegação da página de confirmação para a página de agendamento', () => {
    cy.visit('index2.html')
    cy.get('.img').click()
    cy.url().should('include', 'index.html')
  })
})