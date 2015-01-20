Extends PHP 5.6 with Apache webserver (official repo) with ssmtp functionality. This allows linking with an smtp server.

## Usage

1. Base your PHP/Apache Dockerfile on this container (add your webroot etc.)
2. Start a container with an smtp server on port 25 (for example: `rickw/debian-exim-send`)
3. Start this container and link it to the first container (target name should be `exim`)
4. You should now be able to send mails using php's `mail()` function

## Example

To test your setup, you could run the following command (assuming your smtp server is called exim):

	docker run -i -t --link exim:exim rickw/php-apache-ssmtp /bin/bash

Now, you have a shell, so you could execute `php -a` or `ssmtp` to test the setup.
