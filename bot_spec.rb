require 'bot'

describe "Twitbot" do

  
  it "should append phrase on twitt" do

    original_twitt = "Hoje acordei e fui a praia sozinha pensar na vida... \nFoi tao bom, vou fazer isso mais vezes"
    original_user = 'jehverona'
    
    secound_user = 'viniciussbs'

    twitt = append original_twitt, original_user, secound_user
    twitt.should eql "RT @jehverona: Hoje acordei e fui a praia sozinha pensar na vida... \nFoi tao bom, vou fazer isso mais vezes. O que voce acha, @viniciussbs?"
          
  end

end
