# Docker Halcyon

Ubuntu 14.04 with Halcyon installed. Useful for pre-building or testing
Halcyon-based projects eventually deployed to Heroku.

- https://halcyon.sh
- https://haskellonheroku.com

## Installation

From within this directory:

- Build the image

```
docker build -t $USER/halcyon .
```

Feel free to use any tag you like, adjust Usage accordingly.

## Usage

Within a Halcyon-based project directory:

- Create a file holding private storage variables

**./docker-env**

```
HALCYON_AWS_ACCESS_KEY_ID=...
HALCYON_AWS_SECRET_ACCESS_KEY=...
HALCYON_S3_BUCKET=...
```

- Build with Halcyon in the image

```
docker run --env-file docker-env -v $PWD:/source $USER/halcyon build
```
