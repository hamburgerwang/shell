#CORS
curl \
--verbose \
--request OPTIONS \
http://localhost/to_site \
--header 'Origin: http://localhost/from_site' \
--header 'Access-Control-Request-Headers: Origin, Accept, Content-Type' \
--header 'Access-Control-Request-Method: GET' 