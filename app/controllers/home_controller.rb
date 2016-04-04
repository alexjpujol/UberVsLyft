class HomeController < ApplicationController
    
    def index
        
    @start = params[:start]
    @endloc = params[:endloc]
    
        if @start.nil? != true || @endloc.nil? != true
            
            @geocodeurlstart = open("https://api.opencagedata.com/geocode/v1/json?q=#{@start}&key=#{ENV['GEOCODE_ID']}")

            @geocoderesponsestart = JSON.parse(@geocodeurlstart.read)

            @geocodeurlend = open("https://api.opencagedata.com/geocode/v1/json?q=#{@endloc}&key=#{ENV['GEOCODE_ID']}")

            @geocoderesponseend = JSON.parse(@geocodeurlend.read)

            @latstart = @geocoderesponsestart["results"][1]["geometry"]["lat"]

            @lngstart = @geocoderesponsestart["results"][1]["geometry"]["lng"]    

            @latend = @geocoderesponseend["results"][1]["geometry"]["lat"]

            @lngend = @geocoderesponseend["results"][1]["geometry"]["lng"]


            @uber_request = `curl -H "Authorization: Token "#{ENV['UBER_TOKEN']}"" \
        "https://api.uber.com/v1/estimates/price?start_latitude=#{@latstart}&start_longitude=#{@lngstart}&end_latitude=#{@latend}&end_longitude=#{@lngend}"`

            @uber_output = (JSON.parse(@uber_request))["prices"]

            @test = @uber_output.is_a? Array

            @obtainLyftToken = `curl -X POST -H "Content-Type: application/json" \
            --user "#{ENV['LYFT_ID']}:#{ENV['LYFT_SECRET']}" \
            -d '{"grant_type": "client_credentials", "scope": "public"}' \
            "https://api.lyft.com/oauth/token"`

            @lyft_response = JSON.parse(@obtainLyftToken)    
            @lyftToken = @lyft_response["access_token"]


            @lyftRequest = `curl --include -X GET -H 'Authorization: Bearer #{@lyftToken}' \
            "https://api.lyft.com/v1/cost?start_lat=#{@latstart}&start_lng=#{@lngstart}&end_lat=#{@latend}&end_lng=#{@lngend}"`


            @splitLyftRequest = @lyftRequest.split('version: HTTP/1.1', 2)[1]

            @lyftData = JSON.parse(@splitLyftRequest)

             @lyftHash = @lyftData["cost_estimates"]

        end
    end
    
end
