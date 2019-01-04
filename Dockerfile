FROM registry.access.redhat.com/redhat-sso-7/sso72-openshift:1.1-9

COPY bcgov /opt/eap/themes/bcgov
COPY bcgov-with-login-form /opt/eap/themes/bcgov-with-login-form
COPY gcpe /opt/eap/themes/gcpe
