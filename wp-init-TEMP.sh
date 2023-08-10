#!/bin/bash

# Check for the All-in-One WP Migration plugin
if ! wp plugin is-installed all-in-one-wp-migration; then
    echo "The All-in-One WP Migration plugin is not installed. Installing..."
    wp plugin install all-in-one-wp-migration --activate
fi

# copy the plugin directory to wp-content/plugins/
cp ../_plugins/all-in-one-wp-migration-unlimited-extension.zip wp-content/plugins/

# check if the file exists
if [ -f wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip ]; then
    echo "The All-in-One WP Migration Unlimited Extension plugin is not installed. Installing..."
else
    echo "The All-in-One WP Migration Unlimited Extension plugin is not installed. Please download the plugin from https://import.wp-migration.com/ and place it in the _plugins directory."
    exit 1
fi

# After moving, unzip the plugin
unzip wp-content/plugins/all-in-one-wp-migration-unlimited-extension.zip -d wp-content/plugins/

# Activate the plugin
wp plugin activate all-in-one-wp-migration-unlimited-extension

# Update the plugin to the latest version
wp plugin update all-in-one-wp-migration-unlimited-extension
