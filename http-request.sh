#!/bin/bash

# install jq
# sudo apt-get update
# sudo apt-get install jq

# how to install curl: https://www.luminanetworks.com/docs-lsc-610/Topics/SDN_Controller_Software_Installation_Guide/Appendix/Installing_cURL_for_Ubuntu_1.html

response=$(curl -X GET \  https://swapi.co/api/people/1/ \ -H 'Accept: */*' )

echo $response
