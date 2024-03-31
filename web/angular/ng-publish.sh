npm install
for project in $(ls projects/); do
  cd projects/$project
  npm install
  npm update
#  npm unpublish @{ORG}/$project $PUBLISH_REGISTRY -f
  cd ../..
  npm test --project=$project
  ng build --project=$project
  cd dist/$project
  #npm publish $PUBLISH_REGISTRY
  npm publish --access public
  cd ../..
done

