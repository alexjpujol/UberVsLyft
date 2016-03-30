class HomeController < ApplicationController
    
    def index

    @obtainLyftToken = `curl -X POST -H "Content-Type: application/json" \
     --user "#{LYFT_ID}:#{LYFT_SECRET}" \
     -d '{"grant_type": "client_credentials", "scope": "public"}' \
     "https://api.lyft.com/oauth/token"`

	@lyft_response = JSON.parse(@obtainLyftToken)	
	@lyftToken = @lyft_response["access_token"]

	@lyftRequest = `curl --include -X GET -H 'Authorization: Bearer #{@lyftToken}' \
     "https://api.lyft.com/v1/cost?start_lat=40.7219000&start_lng=-73.9877900&end_lat=40.7079100&end_lng=-74.0064830"`

     @splitLyftRequest = @lyftRequest.split('version: HTTP/1.1', 2)[1]

     @lyftData = JSON.parse(@splitLyftRequest)
     
	 @lyftHash = @lyftData["cost_estimates"]

    end
    
end
