OCPU_SERVER_LINK = 'localhost:5307/ocpu'
OpenCPU.configure do |config|  
  config.endpoint_url = 'http://'+OCPU_SERVER_LINK
  config.timeout      = 30 # Timeout in seconds
  config.verify_ssl   = false # set to false for opencpu server with self-signed certificates.
end