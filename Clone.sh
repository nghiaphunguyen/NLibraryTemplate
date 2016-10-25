
if [ -z "$1" ]
  then
  echo "Run me with: sh Clone.sh [New name]"
  exit 1
fi

NEW_NAME="NewProject"

if [ -n "$1" ]
  then
  NEW_NAME="$1"
fi

cd ../
cp -r "./NLibraryTemplate" "./${NEW_NAME}"
cd "./${NEW_NAME}"
sh Rename.sh "${NEW_NAME}"

rm Clone.sh
rm Rename.sh
