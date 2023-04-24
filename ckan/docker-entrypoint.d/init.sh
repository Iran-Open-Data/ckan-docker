#!/bin/bash

# ckan config-tool /srv/app/ckan.ini "ckan.site_url = https://data.gsmedb.ir"
ckan config-tool /srv/app/ckan.ini "ckan.site_title = SDAC CKAN"
ckan config-tool /srv/app/ckan.ini "ckan.site_description = CKAN repository for Sharif Data Analysis Center"
ckan config-tool /srv/app/ckan.ini "ckan.site_intro_text = Welcome to CKAN for Sharif Data Analysis Center"
ckan config-tool /srv/app/ckan.ini "ckan.locales_offered = en fa_IR"
ckan config-tool /srv/app/ckan.ini "ckan.locale_order = en fa_IR"
ckan config-tool /srv/app/ckan.ini "ckan.display_timezone = Asia/Tehran"
ckan config-tool /srv/app/ckan.ini "ckan.auth.public_activity_stream_detail = true"
ckan config-tool /srv/app/ckan.ini "ckan.auth.allow_dataset_collaborators = true"