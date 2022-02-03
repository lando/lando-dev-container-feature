> ⚠️ NOTE: This functionality is in PREVIEW. Please note it is subject to (heavy) modification!  

# Lando Development Container `Feature`

A remote [**dev container feature**](https://code.visualstudio.com/docs/remote/containers#_dev-container-features-preview) that installs Lando.

This feature can be declared in your `devcontainer.json` file for use in the Remote-Containers extension or GitHub Codespaces as follows:

```
	"features": {
		"docker-in-docker": "latest",
		"reynoldsalec/lando-dev-container-feature/landodevcontainer": "latest",
	}
```

:warning: This is a proof-of-concept feature! We'll be expanding on it as we work on further Codespaces compatibility.

## To-Do

- [ ] Use the new Hyperdrive to install Lando
- [ ] Decouple from the `docker-in-docker` feature (currently a requirement)
- [ ] Look at further performance enhancement possibilities.

## Release Flow

Push a tag (eg `v0.0.1`) to your repo, which will trigger the [deploy-features action](https://github.com/microsoft/publish-dev-container-features-action) in this repo's [`deploy-features.yml` workflow file](https://github.com/microsoft/dev-container-features-template/blob/main/.github/workflows/deploy-features.yml).

Assets will be compressed and added as a release artifact with the name `features.tgz`. 
