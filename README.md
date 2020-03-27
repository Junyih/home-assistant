# home-assistant
Home Assistant on Alpine Linux, with miio and homekit support.

The built docker image(212MB) is much smaller than official homeassistant image(1.3GB)

Miio and Homekit are included, the other Home Assistant components can be loaded on demand automatically, or can by included by modifying the Dockerfile and build a local image.

# Deploy

/root/.homeassistant needs to be mapped to your own config dir.
