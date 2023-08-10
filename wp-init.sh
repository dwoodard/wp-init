#!/bin/bash

# Check for the All-in-One WP Migration plugin
if ! wp plugin is-installed all-in-one-wp-migration; then
    wp plugin install all-in-one-wp-migration --activate
fi

# Base64-encoded ZIP content of the plugin
plugin_zip_base64="UEsFBgAAAAAAAAAAAAAAAA=="

# Decode and save the plugin ZIP
echo "$plugin_zip_base64" | base64 -d > wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip

# Check if the file exists
if [ -f wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip ]; then
    echo "The All-in-One WP Migration Unlimited Extension plugin is not installed. Installing..."
fi

# After moving, unzip the plugin
unzip wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip -d wp-content/plugins/

# Activate the plugin
wp plugin activate all-in-one-wp-migration-unlimited-extension

# Update the plugin to the latest version
wp plugin update all-in-one-wp-migration-unlimited-extension
