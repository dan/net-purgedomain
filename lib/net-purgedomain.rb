require 'net/http'

class Net::HTTP::PurgeDomain < Net::HTTP::Get
  METHOD = 'PURGEDOMAIN'
  REQUEST_HAS_BODY = false
  RESPONSE_HAS_BODY = true
end
