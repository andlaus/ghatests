# confer https://docs.github.com/en/rest

if test "$#" != 1; then
    echo "Usage: $0 PAT_TOKEN"
    exit 1
fi

GH_TOKEN="$1"

#curl -L \
#  -H "Accept: application/vnd.github+json" \
#  -H "Authorization: Bearer $GH_TOKEN"\
#  https://api.github.com/repos/andlaus/ghatests/actions/runs

curl -L \
     -X POST \
     -H "Accept: application/vnd.github+json" \
     -H "Authorization: Bearer $GH_TOKEN"\
     -d '
{
"event_type": "upstream change",
"client_payload": { "repo":"bellows" }
}
' \
     https://api.github.com/repos/andlaus/ghatests/dispatches
