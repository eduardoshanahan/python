IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
curl -H "Content-Type: application/json" --data '{"source_type": "Tag", "source_name":"'$IMAGE_VERSION'"}' -X POST https://registry.hub.docker.com/u/eduardoshanahan/python/trigger/b7d46bb5-f9ba-4ef7-b595-4041b4e0d99f/ | json_pp