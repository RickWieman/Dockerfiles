# phpMyAdmin

Recent version of phpMyAdmin, based on PHP 7.0 with Apache.

[![Docker Layers](https://images.microbadger.com/badges/image/rickw/phpmyadmin.svg)](http://microbadger.com/images/rickw/phpmyadmin "Get your own image badge on microbadger.com")

## Usage

Just launch this container, linked with your mysql container. Make sure that you use name `mysql` for your link, as this is the hostname used in the configuration.
Furthermore, note that root logins are disabled in the configuration.
