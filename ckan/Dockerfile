FROM ckan/ckan-base:ckan-2.10.0
#FROM ckan/ckan-base:dev-v2.10

# Set up environment variables
ENV APP_DIR=/srv/app
ENV TZ=UTC
RUN echo ${TZ} > /etc/timezone

### example_theme ###
RUN  pip3 install -e git+https://github.com/TerseTears/ckanext-example_theme.git#egg=ckanext-example_theme

COPY docker-entrypoint.d/* /docker-entrypoint.d/

# Make sure both files are not exactly the same
RUN if ! [ /usr/share/zoneinfo/${TZ} -ef /etc/localtime ]; then \
        cp /usr/share/zoneinfo/${TZ} /etc/localtime ;\
    fi ;
