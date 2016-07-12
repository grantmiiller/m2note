Notes, yo

## Setup
First add `M2NOTE_PATH` do your bash profile. For example:
`export M2NOTE_PATH=$HOME/.m2notes`

If you want autocomplete, you will also have to reference the file as well. For example:
```
if [ -f /path/to/bash_completion.d ]; then
  . /path/to/bash_completion.d
fi
```

## Usage
Usage: /Users/207138/bin/m2notes [-dhlqsv] [--getlist] [<note name>] [<note text>]
OPTIONS:
  -d:         Deletes <note name>
  -h:         Displays this message
  -l:         Lists saved notes. Default command
  -q:         A quick note. For example:
                 /Users/207138/bin/m2notes -q my_note my note contents
  -s:         Shows contents of <note name>. For example:
                 /Users/207138/bin/m2notes -s my_note my_other_note
  -v:         Displays version info
  --getlist   Non-pretty list of notes
