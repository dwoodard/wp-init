#wp-init

wp-init is a simple bash script that will install WordPress for you. It will also create a database and a user for that database. It will also download and install the latest version of WordPress for you.

## Usage

To use wp-init, you can either download the script and run it,

or just copy and paste the following command into your terminal:

```bash
curl -s https://raw.githubusercontent.com/dwoodard/wp-init/master/wp-init.sh | bash -s
```

## Features
- wp-config.php
- Plugins
  - Advanced Custom Fields Pro
  - All-in-One WP Migration & All-in-One WP Migration Unlimited Extension
- wp-cli
  - wp plugin install
  - wp plugin activate
  - wp plugin update --all

