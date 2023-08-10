#!/bin/bash

# curl -s https://github.com/dwoodard/wp-init/archive/refs/heads/master.zip | bash -s


# Check for the All-in-One WP Migration plugin
if ! wp plugin is-installed all-in-one-wp-migration; then
    wp plugin install all-in-one-wp-migration --activate
fi 

# I have stored the plugin in my github repo dwoodard/wp-init, so I can download it with curl
curl -o wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip -s https://raw.githubusercontent.com/dwoodard/wp-init/master/_plugins/all-in-one-wp-migration-unlimited-extension.zip

# After moving, unzip the plugin
unzip wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip -d wp-content/plugins/

# Activate the plugin
wp plugin activate all-in-one-wp-migration-unlimited-extension

# Update the plugin to the latest version
wp plugin update all-in-one-wp-migration-unlimited-extension
