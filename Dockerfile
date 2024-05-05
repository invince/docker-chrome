# Pull base image.
FROM jlesage/baseimage-gui:ubuntu-22.04-v4

# Install chrome
RUN apt-get update
RUN apt-get install -y wget
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install -y ./google-chrome-stable_current_amd64.deb

# Copy the start script.
COPY --chmod=755 startapp.sh /startapp.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "Chrome"