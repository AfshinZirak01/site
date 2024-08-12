#!/bin/sh

git filter-branch --env-filter '
WRONG_EMAIL='afshin.barish@yahoo.com'
NEW_NAME='AfshinZirak01'
NEW_EMAIL='afshin.barish@yahoo.com'

if [ &quot$GIT_COMMITTER_EMAIL&quot = &quot$WRONG_EMAIL&quot ]
then
   export GIT_COMMITTER_NAME=&quot$NEW_NAME&quota
    export GIT_COMMITTER_EMAIL=&quot$NEW_EMAIL&quot
fi
if [ &quot$GIT_AUTHOR_EMAIL&quot = &quot$WRONG_EMAIL&quot ]
then
    export GIT_AUTHOR_NAME=&quot$NEW_NAME&quot
    export GIT_AUTHOR_EMAIL=&quot$NEW_EMAIL&quot
fi
' --tag-name-filter cat -- --branches --tags