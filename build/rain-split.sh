#
# This script will split up each Rain library to its own github repo
#

./git-subsplit.sh init git@github.com:octobercms/library.git
./git-subsplit.sh publish --no-tags src/October/Rain/Attach:git@github.com:octoberrain/attach.git
./git-subsplit.sh publish --no-tags src/October/Rain/Auth:git@github.com:octoberrain/auth.git
./git-subsplit.sh publish --no-tags src/October/Rain/Combiner:git@github.com:octoberrain/combiner.git
./git-subsplit.sh publish --no-tags src/October/Rain/Database:git@github.com:octoberrain/database.git
./git-subsplit.sh publish --no-tags src/October/Rain/Events:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Exceptions:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Extension:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Filesystem:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Foundation:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Html:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Network:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Router:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Support:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/Translation:git@github.com:octoberrain/events.git
./git-subsplit.sh publish --no-tags src/October/Rain/View:git@github.com:octoberrain/events.git
rm -rf .subsplit/