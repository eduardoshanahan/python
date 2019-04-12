IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')

echo 'Pushing to bitbucket'
git push bitbucket
echo 'Pushing to github'
git push github

echo 'Checking tag'
if [ $(git tag -l $IMAGE_VERSION) ]; then
    echo 'Removing previously registered tag'
    git tag -d $IMAGE_VERSION
else
    echo 'Tag was not created before'
fi
echo 'Creating new tag '$IMAGE_VERSION
git tag $IMAGE_VERSION

echo 'Pushing tags to bitbucket'
git push bitbucket --tags
echo 'Pushing tags to github'
git push github --tags
