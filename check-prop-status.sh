#! /bin/sh
proposal="$1"
shift
pj="$(${1+"$@"} q gov proposal "$proposal" -ojson)"
st="$(${1+"$@"} status)"
echo "$st" | jq -r .SyncInfo.latest_block_height
echo "$pj" | jq -r .content.plan.height
echo "$st" | jq -r .SyncInfo.latest_block_time
echo "$pj" | jq -r .voting_end_time
echo "$pj" | jq -r .status
