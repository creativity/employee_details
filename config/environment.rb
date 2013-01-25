# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
HindaviEmployee::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY']  = '6LcTDtwSAAAAADuzAdOuK9E_VJ0XJFhVr2aw3_2c'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LcTDtwSAAAAAOII7LDdlh5TK_-zpouxrNoDaAkV'
