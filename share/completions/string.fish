# Completion for builtin string
# This follows a strict command-then-options approach, so we can just test the number of tokens
complete -f -c string
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and not contains -- (commandline -opc)[2] escape" -s q -l quiet
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "length"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "sub"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] sub" -s s -l start -a "(seq 1 10)"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] sub" -s l -l length -a "(seq 1 10)"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "split"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] split" -s m -l max -a "(seq 1 10)" -d "Specify maximum number of splits"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] split" -s r -l right -d "Split right-to-left"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "join"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "trim"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] trim" -s l -l left -d "Trim only leading characters"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] trim" -s r -l right -d "Trim only trailing characters"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] trim" -s c -l chars -d "Specify the chars to trim (default: whitespace)"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "escape"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] escape" -s n -l no-quoted -d "Escape with \\ instead of quoting"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "match"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] match" -s n -l index -d "Report index and length of the matches"
complete -f -c string -n "test (count (commandline -opc)) -lt 2" -a "replace"
# All replace options are also valid for match
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] match replace" -s a -l all -d "Report all matches per line/string"
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] match replace" -s i -l ignore-case
complete -f -c string -n "test (count (commandline -opc)) -ge 2; and contains -- (commandline -opc)[2] match replace" -s r -l regex -d "Use regex instead of globs"
