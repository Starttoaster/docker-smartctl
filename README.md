# docker-smartctl
Runs bash in a Docker container daily to output a log of S.M.A.R.T. data.

#Easy setup instructions:

Make a log file directory somewhere on your machine: `mkdir logs`

Run the container:

`docker run -v /local/path/to/logs:/logs --privileged --name smart -d starttoaster/smartctl:latest`

This container creates timestamped logfiles inside the mounted volume in the format of 'YYYYMMDD.log'

**Note:** This container runs with the --privileged flag. As such, it should not be made publicly accessible. It is only privately accessible by default. This container is meant to be paired with a public app to display the files such as NGINX.
