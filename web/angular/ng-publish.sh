npm install
for project in $(ls projects/); do
  cd projects/$project
  npm install
  npm update
  ng test --project=$project --watch=false --browsers=ChromeHeadless
  npm publish --access public
  cd ../..

done

