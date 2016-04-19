class HomeController < ApplicationController
    
  def index

  end
    

  def yelp_results
        
    @start = params[:start]
    @endloc = params[:endloc]
   
      if @start != "" && @endloc != "" 
          
        @geocodeurlstart = open("https://api.opencagedata.com/geocode/v1/json?q=#{@start}&key=#{ENV['GEOCODE_ID']}")

        @geocoderesponsestart = JSON.parse(@geocodeurlstart.read)

        @geocodeurlend = open("https://api.opencagedata.com/geocode/v1/json?q=#{@endloc}&key=#{ENV['GEOCODE_ID']}")

        @geocoderesponseend = JSON.parse(@geocodeurlend.read)

        @latstart = @geocoderesponsestart["results"][1]["geometry"]["lat"]

        @lngstart = @geocoderesponsestart["results"][1]["geometry"]["lng"]    

        @latend = @geocoderesponseend["results"][1]["geometry"]["lat"]

        @lngend = @geocoderesponseend["results"][1]["geometry"]["lng"]

      end
  end

    
end

