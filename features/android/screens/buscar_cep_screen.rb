class BuscarCepScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)              { 'decor_content_parent' }
  element(:search_button)            {  'search' }
  element(:cep_field)                { 'cep' }
  element(:previous_consultations)   { 'history' }
  element(:addresses)                { 'addresss' }

  # Declare todas as acoes da tela

  def there_are_addresses?
    address = query("* id:'#{addresses}'")
    address.count >= 1
  end
end
