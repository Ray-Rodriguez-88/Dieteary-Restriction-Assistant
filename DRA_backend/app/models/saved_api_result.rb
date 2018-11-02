require 'rest-client'

class SavedApiResult < ApplicationRecord 

  def self.getItemByBarcode(barcode)
    #optional more dynamic location searc
    product_api_url = "https://api.barcodelookup.com/v2/products?barcode=#{barcode}&formatted=y&key=wxbyyza3k3p3him8vkph7sa926bcuq"
    
    # final_api_url = product_api_url + URI.encode_www_form(product_code)
    api_data = RestClient.get(product_api_url, headers={
      'Content-Type': 'application/json'
    })
    

    parsed_data = JSON.parse(api_data)

    
    returned_data = {
      search_offset: parsed_data
    }
    # if barcode.size > 0

    # returned_data
  end
end
