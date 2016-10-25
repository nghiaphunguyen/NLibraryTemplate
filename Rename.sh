brew install rename ack

if [ -z "$1" ]
  then
  echo "Run me with: sh Rename.sh [New name]"
  exit 1
fi

OLDNAME="NLibraryTemplate"

if [ -z "$2" ]
  then
  echo "The old name will be ${OLDNAME}"
  echo "You can run with: sh Rename.sh [New name] [Old name]"
fi

if [ -n "$2" ]
  then
  OLDNAME="$2"
fi

rm -rf ".git/"
rm -rf "Pods/"
rm -rf "Podfile.lock"

rm -rf "Carthage/"
rm -rf "Cartfile.resolved"

NEW_NAME="$1"

find . -type f -exec sed -i '' "s/${OLDNAME}/${NEW_NAME}/g" "{}" \;

for ((i = 0; i < 10; i++))
do
	find . -name "*${OLDNAME}*" -print0 | xargs -0 rename -S "${OLDNAME}" "${NEW_NAME}"
done

pod install
carthage update
