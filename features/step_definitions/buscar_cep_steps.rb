######### DADO #########

Given(/^que estou na tela de consulta de CEP$/) do
 @page = page(BuscarCepScreen).await(timeout: 5)
end

######### QUANDO #########

When(/^digitar um CEP válido$/) do
  @page.enter_cep_field CEP[:número]
end

When(/^tocar no botão buscar$/) do
  @page.touch_search_button
end

When(/^tocar no botão de consultas anteriores$/) do
  @page.touch_previous_consultations
end

######### ENTãO #########

Then(/^devo visualizar o resultado da busca$/) do
  @page.is_on_page? CEP[:endereço]
end

Then(/^devo visualizar o histórico de buscas$/) do
  raise 'There are no addresses on the screen' unless
      @page.there_are_addresses?
end