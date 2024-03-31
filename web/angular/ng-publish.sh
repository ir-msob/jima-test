npm install
for project in $(ls projects/); do
  cd projects/$project
  npm install
  npm update
  cd ../..
  npm test --project=$project
  ng build --project=$project
  cd projects/$project
  #npm publish $PUBLISH_REGISTRY
  npm publish --access public
  cd ../..
done

