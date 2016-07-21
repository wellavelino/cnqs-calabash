class BuscarCepScreen < IOSScreenBase
  # Identificador da tela
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)              { 'CEP_VIEW' }
  element(:search_button)            {  'SEACH_BUTTON' }
  element(:cep_field)                { 'CEP_FIELD' }
  element(:previous_searches)        { 'PREVIOUS_SEARCHES' }
  element(:addresses)                { 'ADDRESSES' }

  # Declare todas as acoes da tela
  def there_are_addresses?
    address = query("* id:'#{addresses}'")
    address.count >= 1
  end
end
