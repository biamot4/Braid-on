Descrição: Agendamento do usuário

Cenário 1: Agendamento com informações válidas
Dado que eu estou na página de agendamento
Quando eu insiro "Pedro Emanoel Alves Dias" no campo de Nome Completo.
E insiro a data “2025-05-22” no campo de Data.
E seleciono "11:00" no campo de Horários.
E marco a Forma de pagamento “Pix”
E seleciono o Tipo de Trança “Trança nagô”
E clico no botão “Agendar!”
Então o alerta: “Agendamento realizado com sucesso!” deve aparecer na tela

Cenário 2: Redirecionamento da página de agendamento para a página de confirmação
Dado que eu estou na página de agendamento
Quando eu insiro "Pedro Emanoel Alves Dias" no campo de Nome Completo.
E insiro a data “2025-05-22” no campo de Data.
E seleciono "11:00" no campo de Horários.
E marco a Forma de pagamento “Pix”
E seleciono o Tipo de Trança “Trança nagô”
E clico no botão “Agendar!”
E o alerta “Agendamento realizado com sucesso!” aparece na tela
Então eu devo ser redirecionado para a página de confirmação do agendamento


Cenário 3: Agendamento com campos obrigatórios vazios
Dado que eu estou na página de agendamento
Quando eu não insiro nenhuma informação nos campos
E clico no botão “Agendar”
Então todas as mensagens de erro contendo “Campo Obrigatório! ” devem aparecer na tela


Descrição: Confirmação do agendamento do usuário

Cenário 1: Confirmação das informações do agendamento
Dado que eu estou na página de agendamento
Quando eu insiro "Beatriz Mota" no campo de Nome Completo.
E insiro a data “2025-05-22” no campo de Data.
E seleciono "11:00" no campo de Horários.
E marco a Forma de pagamento “Pix”
E seleciono o Tipo de Trança “Trança nagô”
E clico no botão “Agendar!”
E o alerta: “Agendamento realizado com sucesso!” aparece na tela
E eu sou redirecionado para a página de confirmação do agendamento
Então “A sessão de Beatriz Mota” deve aparecer na tela
E “Foi agendada para o dia 2025-05-22” deve aparecer na tela
E “às 11:00” deve aparecer na tela

Cenário 2: Teste da navegação da página de confirmação para a página de agendamento
Dado que eu estou na página de confirmação do agendamento
Quando eu clico na seta de retorno no canto inferior esquerdo
Então devo ser redirecionado para a página de agendamento

Em inglês
Description: User appointment

Scenario 1: Appointment with valid information
Given that I am on the appointment page
When I enter "Pedro Emanoel Alves Dias" in the Full Name field.
And I enter the date “2025-05-22” in the Date field.
And I select “11:00” in the Time field.
And select the Payment method “Pix”
And select the Braid type “Braid nagô”
And click on the “Schedule!” button.
Then the alert: "Booking successful!" should appear on the screen

Scenario 2: Redirection from the booking page to the confirmation page
Given that I am on the booking page
When I enter "Pedro Emanoel Alves Dias" in the Full Name field.
And I enter the date “2025-05-22” in the Date field.
And I select “11:00” in the Time field.
And select the Payment method “Pix”
And select the Braid type “Braid nagô”
And click on the “Schedule!” button.
And the alert “Booking successful!” appears on the screen
Then I should be redirected to the booking confirmation page


Scenario 3: Booking with empty mandatory fields
Given that I'm on the booking page
When I don't enter any information in the fields
And I click on the ‘Book’ button
Then all the error messages containing "Mandatory field! " should appear on the screen


Description: Confirmation of the user's appointment

Scenario 1: Confirmation of the appointment information
Given that I am on the appointment page
When I enter "Beatriz Mota" in the Full Name field.
And enter the date “2025-05-22” in the Date field.
And I select “11:00” in the Time field.
And select the Payment method “Pix”
And select the Braid type “Braid nagô”
And click on the “Schedule!” button.
And the alert: “Booking successful!” appears on the screen
And I am redirected to the booking confirmation page
Then “Beatriz Mota's session” should appear on the screen
And “It has been booked for 2025-05-22” should appear on the screen
And “at 11:00” should appear on the screen

Scenario 2: Test navigation from the confirmation page to the booking page
Given that I am on the booking confirmation page
When I click on the back arrow in the bottom left-hand corner
Then I should be redirected to the booking page.

