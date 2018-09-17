#encoding:utf-8

Dado("que eu sou um cliente e irei comprar um vivo fixa") do

    @cpf = Faker::CPF.numeric #=>"38012932970"
    @email = "Appeaculove@rhyta.com"
    #Faker::Internet.email
    puts @cpf
    puts @email
    
   visit:"#{DATA['compra_fixa']['url']}"
    find('[name="msisdn"]').set @cpf
    find('[name="cpf"]').set @cpf
    find('[name="email"]').set @email
    find('[name="produto"]').text
    find(:xpath,"/html/body/form/select/option[4]").click
    find('[type="submit"]').click 
    sleep(10)

end
  
Quando("eu irei logar nos apps que comprei e testar suas funcionalidades") do
   puts #VIVO PROTEGE
 
    visit:"#{DATA['protege_gvt']['url']}"
    protege = first('.txt-logo').text 
    expect(protege).to include "Vivo Protege"
    find('#entrar-passo-0').click
    find('.btn-lg[data-conta="fixa"]').click
    find('#phone').set @cpf
    find('#entrar').click
    puts "Vivo#{@cpf[0..3]}"
    find('.form-control').set "vivo#{@cpf[0..3]}"
    find('#entrar').click 
    @fs_ok = find('.centerContainer').text 
    expect(@fs_ok).to include  "BEM-VINDO À FS."
    sleep(3)
    #validar_kibana
    

#VFOL
  visit:"#{DATA['vfol_gvt']['url']}"
  vfol = find('.logo').text 
  expect(vfol).to include "Vivo Filhos Online"
  sleep(2)
  find('.button[data-choice="entrar"]').click
  find('.button[data-partner="fixa"]').click
   sleep(5) 
  find('#phone').set @cpf
  find('.login').click
  find('#password').set "vivo#{@cpf[0..3]}"
  @senha = "vivo#{@cpf[0..3]}"
  find('.login').click
  @fs_ok = find('.centerContainer').text 
  expect(@fs_ok).to include  "BEM-VINDO À FS."
  #validar_kibana


#VSYNC

  visit:"#{DATA['vsync_gvt']['url']}"
  vsync = find('.txt-logo').text
  expect(vsync).to include "Vivo Sync"
  find('#entrar-passo-0').click
  find('.btn[data-conta="fixa"]').click
  find('#phone').set @cpf
  find('#entrar').click
  find('#senha').set "vivo#{@cpf[0..3]}"
  find('#entrar').click
  @fs_ok = find('.centerContainer').text 
  expect(@fs_ok).to include  "BEM-VINDO À FS."
  #validar_kibana
 
  puts #wifi-Seguro
 
  visit:"#{DATA['wi_fi_gvt']['url']}"
  find('#entrar-passo-0').click
  find('.btn[data-conta="fixa"]').click
  sleep(2) 
  find('#phone').set @cpf
  sleep(2)
  find('#entrar').click
  @fs_ok = find('.centerContainer').text 
  expect(@fs_ok).to include  "BEM-VINDO À FS."
  
end
  
 Então("então vou me certificar que tudo está funcionando e se sim usarei meus apps diariamente.") do
    puts @cpf
    puts @email
    puts @senha
end