while true; 
do
	curl http://example-app-default.apps-crc.testing/
	curl http://example-app-default.apps-crc.testing/hello
	curl -X POST -H "Content-Type: application/json" -d '{"name": "linuxize", "email": "linuxize@example.com"}' http://example-app-default.apps-crc.testing/bye
done
