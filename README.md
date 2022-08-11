# diva-docker-react-client

## Usage

Run 
``` 
./buildDocker.sh <REST_API_BASE_URL> <BASENAME> <VERSION>
``` 

### Parameters

**REST_API_BASE_URL** is the base URL to the diva-cora API endpoint you would like to use for this build. This can be a local endpoint but also for example preview or test.
If its a local URL you're probably using [cora-eclipse](https://github.com/olovm/cora-eclipse) and can find the endpoint there.
If you want your build of diva-react-client to connect to one of the built environments e.g. preview the easiest way to get the URL is to visit JSClient in that environment and scroll down in the left navigation pane. All the way down at the bottom you'll see the REST URL used.

Default: `https://cora.test.diva-portal.org/diva/rest/`

**BASENAME** depends on how you want diva-react-clients URL to look like. It's the part after the domain. 

If the final URL should be `https://www.example.com/some/other/stuff`, the BASENAME would be `/some/other/stuff`.

Default: `/`

**VERSION** The docker image will be tagged diva-docker-react-client:VERSION, e.g. diva-docker-react-client:latest.

Default: `latest`
