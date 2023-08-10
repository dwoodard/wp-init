#!/bin/bash

# Check for the All-in-One WP Migration plugin
if ! wp plugin is-installed all-in-one-wp-migration; then
    wp plugin install all-in-one-wp-migration --activate
fi

# copy the plugin to wp-content/plugins/
curl -o wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip https://github.com/dwoodard/wp-init/blob/9c72927ac2a1afc8736035290cb81e990a458848/_plugins/all-in-one-wp-migration-unlimited-extension.zip

# check if the file exists
if [ -f wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip ]; then
    echo "The All-in-One WP Migration Unlimited Extension plugin is not installed. Installing..."
fi

# After moving, unzip the plugin
unzip wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip -d wp-content/plugins/

# Activate the plugin
wp plugin activate all-in-one-wp-migration-unlimited-extension

# Update the plugin to the latest version
wp plugin update all-in-one-wp-migration-unlimited-extension
