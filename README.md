# Dynamic Gandi LiveDNS Update

This is a simple script that updates an A record hosted from Gandi's LiveDNS service.

# Configuration

Copy `config.yml.template` to `config.yml`, and provide values to the required keys. Install required dependencies with `bundle install`.

# Usage

Once configured and dependencies have been installed, simply run `ruby update_record.rb`.

# Docker

You can run this command via docker by first building the image: `docker build -t update-dns-record .`. Once built, you can run the following to run the script once, and remove the container afterwards: `docker run -it --rm update-dns-record`.
