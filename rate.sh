ENDPOINT=http://example-app-default.apps-crc.testing/
while true; 
do
	curl $ENDPOINT
	curl ${ENDPOINT}hello
	curl -X POST -H "Content-Type: application/json" -d '{"name": "linuxize", "email": "linuxize@example.com"}' ${ENDPOINT}bye
done
