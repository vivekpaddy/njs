#git clone https://github.com/nginx/njs-examples
cd njs-examples
EXAMPLE='http/authorization/auth_request'
#EXAMPLE='http/hello'
docker run --rm --name njs_example --network=internalkeycloak --env=SECRET_KEY=foo  -v $(pwd)/conf/$EXAMPLE.conf:/etc/nginx/nginx.conf:ro -v $(pwd)/njs/:/etc/nginx/njs/:ro -p 80:80 -p 443:443 -d nginx 
# for NGINX-PLUS examples,
# docker run ... -d mynginxplus

# Stopping.
