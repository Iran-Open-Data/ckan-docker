FROM ckan/ckan-base:ckan-2.10.0
#FROM ckan/ckan-base:dev-v2.10

# Set up environment variables
ENV APP_DIR=/srv/app
ENV TZ=UTC
RUN echo ${TZ} > /etc/timezone

### example_theme ###
RUN  pip3 install -e git+https://github.com/TerseTears/ckanext-example_theme.git#egg=ckanext-example_theme

### hierarchy ###
RUN pip3 install -e "git+https://github.com/davidread/ckanext-hierarchy.git#egg=ckanext-hierarchy" && \
      pip3 install -r ${APP_DIR}/src/ckanext-hierarchy/requirements.txt

### Add translations ###
ADD --chown=ckan:root https://raw.githubusercontent.com/Iran-Open-Data/ckan-translation/main/ckan.po  https://raw.githubusercontent.com/Iran-Open-Data/ckan-translation/main/ckan.mo /srv/app/src/ckan/ckan/i18n/fa_IR/LC_MESSAGES

### Add scripts to execute on start ###
COPY docker-entrypoint.d/* /docker-entrypoint.d/

# Make sure both files are not exactly the same
RUN if ! [ /usr/share/zoneinfo/${TZ} -ef /etc/localtime ]; then \
        cp /usr/share/zoneinfo/${TZ} /etc/localtime ;\
    fi ;
