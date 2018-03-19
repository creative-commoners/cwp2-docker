#!/bin/bash

echo "Installing dependencies..."
composer install --prefer-dist

echo "Building database..."
vendor/bin/sake dev/build

echo "Running CWP core unit test suite..."
php -d memory_limit=512M vendor/bin/phpunit vendor/cwp/cwp-core/tests
