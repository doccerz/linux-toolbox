find /opt/jboss-eap-7.2/standalone/deployments/FUNDS_STD_CLOUD_EE.war  | sed -e 's/^/"/g' -e 's/$/"/g' | xargs sha256sum | tee -a ~/sha256.txt