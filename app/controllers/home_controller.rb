class HomeController < ApplicationController
    
    def index

    @obtainToken = `curl -X POST -H "Content-Type: application/json" \
     --user "#{LYFT_ID}:#{LYFT_SECRET}" \
     -d '{"grant_type": "client_credentials", "scope": "public"}' \
     "https://api.lyft.com/oauth/token"`

	@lyft_response = JSON.parse(@obtainToken)	
	@lyftToken = @lyft_response["access_token"]

	@lyftRequest = `curl --include -X GET -H 'Authorization: Bearer #{@lyftToken}' \
     "https://api.lyft.com/v1/cost?start_lat=40.7219000&start_lng=-73.9877900&end_lat=40.7079100&end_lng=-74.0064830"`

     @splitLyft1 = @lyftRequest.split('version: HTTP/1.1', 2).last

     @lyftData = JSON.parse(@splitLyft1)
     
	 @lyftLinePriceMax = @lyftData["estimated_cost_cents_max"[3]]		
    end
    
end
