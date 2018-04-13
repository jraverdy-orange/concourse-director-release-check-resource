FROM alpine:edge
RUN  apk add --update ruby ruby-libs ruby-json openssl-dev musl-dev libstdc++ jq; \
	 apk add --virtual build_deps gcc make g++ \
						ruby-dev build-base ; \
	 rm -rf /var/cache/apk/* ; \					
     gem install cf-uaac --no-rdoc --no-ri ; \
     apk del build_deps ;
COPY /assets /opt/resource
