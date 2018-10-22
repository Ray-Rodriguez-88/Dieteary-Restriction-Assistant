class Api::V1::SavedApiResultsController < ApplicationController

  
def barcode_data
  
  data = SavedApiResult.getItemByBarcode(params[:barcode])
  
  data = data[:search_offset]["products"]
  render json: { data: data }, status: :accepted


end


  
end
