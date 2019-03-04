# Docker Cloudflare Terraforming

A Dockerized `cf-terraforming` ([https://github.com/cloudflare/cf-terraforming](https://github.com/cloudflare/cf-terraforming)).

## Configuration

Copy `.env.example` to `.env`, and modify the file to set the environment variables.

The following environment variables must be available to the container:
* `CLOUDFLARE_ACCOUNT_ID`
* `CLOUDFLARE_EMAIL`
* `CLOUDFLARE_TOKEN`

## Usage

For a full list of commands available, run:

```
docker run --env-file .env -it --rm nfarrington/cf-terraforming --help
```

### Example

To obtain configuration for all Cloudflare resources, run:

```
docker run --env-file .env -it --rm nfarrington/cf-terraforming all
```

## License

Licensed under the [MIT license](https://opensource.org/licenses/MIT).
