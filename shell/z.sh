
function retag() {
  echo "deleting remote tag $1"
  git push origin :$1
  echo "deleting local tag"
  git tag -d $1
  echo "creating new tag"
  git tag $1
  echo "pushing new tag"
  git push origin --tag $1
}

function nver() {
  npm version patch
  ggpush
  git push origin --tags
}

source "./work.sh"
