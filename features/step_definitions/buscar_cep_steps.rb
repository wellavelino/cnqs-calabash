######### DADO #########

Given(/^que estou na tela de consulta de CEP$/) do
 @page = page(BuscarCepScreen).await(timeout: 5)
end

######### QUANDO #########

When(/^digitar um CEP (válido)$/) do |type|
  @page.enter_cep CEPS[type.to_sym][:número]
end

When(/^tocar no botão buscar$/) do
  @page.touch_search_button
end

When(/^tocar no botão de consultas anteriores$/) do
  @page.touch_previous_searches
end

######### ENTãO #########

Then(/^devo visualizar o resultado da busca$/) do
  #@page.is_on_page? CEPS[:endereço]
end

Then(/^devo visualizar o histórico de buscas$/) do
  sleep (2)
  raise 'There are no addresses on the screen' unless @page.there_are_addresses?
end

Então(/^devo visualizar o resultado da busca pelo CEP (válido)$/) do |type|
  sleep(2)
  @page.is_on_page? CEPS[type.to_sym][:endereço]
end