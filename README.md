# docker-smartctl

[Visit the Docker Hub page here.](https://hub.docker.com/r/starttoaster/smartctl)

Runs bash in a Docker container daily to output a log of S.M.A.R.T. data.

# SMARTCTL ONLY Installation:

Make a log file directory somewhere on your machine: `docker volume create logs`

Run the container: `docker run -d -v logs:/logs -e TZ="America/Chicago" --privileged starttoaster/smartctl:latest`

This container creates timestamped logfiles inside the mounted volume in the format of 'YYYYMMDD.log'

For accurate timestamps, set your timezone to your local time. This is configurable with `-e TZ="My/Timezone"` ... [Look here for a list of valid timezones.](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)

**Note:** This container runs with the --privileged flag. As such, it should not be made publicly accessible. It is only privately accessible by default. This container is meant to be paired with a public app to display the files such as H5AI or Apaxy. For the latter, please see my [Apaxy image based on Alpine here.](https://hub.docker.com/r/starttoaster/apaxyalps). Directions below:

# Apaxy + SMARTCTL Installation

Create directory to hold Apaxy and logs:
`mkdir ~/smart/`

Start up Apaxy container:
`docker run -d -v ~/smart:/data -p 80:80 starttoaster/apaxyalps`

Start up SMARTCTL container:
`docker run -d -v ~/smart/webroot:/logs TZ="America/Chicago" --privileged starttoaster/smartctl`
