Dado('que esteja na tela inicial do aplicativo') do
   expect(@nav.inicial.displayed?).to be true

end
  
Quando('tocar nas opcao de unidades') do
    @nav.unidades
end
  
Quando('selecionar a unidade') do
    @nav.tap_by_unity("Brasília")
end
  
Então('validar o endereco da unidade') do
   # log(get_source)  >> obter o xml da pagina 

    enderecoParcial = "SEPS 715/915, Conjunto A, Bloco E"
    validacao = find_element(xpath: "//android.widget.TextView[contains(@text,'#{enderecoParcial}')]")

    expect(validacao.displayed?).to be true

#     expect(@nav.validar.displayed?).to be true
 
# element = find_element(id: "br.com.grupofleury.fleury.hml:id/point_of_care_full_address")
# element.text
# log(element)

end