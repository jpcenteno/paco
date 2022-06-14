#! /bin/sh
set -euo pipefail

source test-fns.sh

templating_works_for_some_command() {
    result=$(./paco <<EOF
yada yada
<?paco #! /usr/bin/env bash
echo que onda
?>
blah blah
EOF
)
    assert "$result" "yada yada
que onda
blah blah"
}

templating_works_with_replacing() {
    export TEST="que onda"
    result=$(./paco <<EOF
yada yada
<?paco #! /usr/bin/env bash
echo $TEST
?>
blah blah
EOF
)
    assert "$result" "yada yada
que onda
blah blah"
}

test templating_works_for_some_command
test templating_works_with_replacing
