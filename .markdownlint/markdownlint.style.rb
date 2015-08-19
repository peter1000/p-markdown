# Peter1000 20150819: Enforce markdown-style
#
# see: https://github.com/mivok/markdownlint
#


# MD001 - Header levels should only increment by one level at a time
# => This rule is triggered when you skip header levels in a markdown document
rule 'MD001'

# MD002 - First header should be a h1 header
# => This rule is triggered when the first header in the document isn't a h1 header
#rule 'MD002'

# MD003 - Header style
# Parameters: style ("consistent", "atx", "atx_closed", "setext", "setext_with_atx"; default "consistent")
# => This rule is triggered when different header styles (atx, setext, and 'closed' atx) are used in the same document
rule 'MD003', :style => :atx

# MD004 - Unordered list style
# Parameters: style ("consistent", "asterisk", "plus", "dash"; default "consistent")
# => This rule is triggered when the symbols used in the document for unordered list items do not match the configured
#    unordered list style
rule 'MD004', :style => :asterisk

# MD005 - Inconsistent indentation for list items at the same level
# => This rule is triggered when list items are parsed as being at the same level, but don't have the same indentation
rule 'MD005'

# MD006 - Consider starting bulleted lists at the beginning of the line
# => This rule is triggered when top level lists don't start at the beginning of a line:
rule 'MD006'

# MD007 - Unordered list indentation
# Parameters: indent (number; default 2)
# => This rule is triggered when list items are not indented by the configured number of spaces (default: 2).
rule 'MD007', :indent => 4

# MD008: There seems to be no rule MD008

# MD009 - Trailing spaces
# Parameters: br_spaces (number; default: 0)
# => This rule is triggered on any lines that end with whitespace. To fix this, find the line that is triggered and
#    remove any trailing spaces from the end.
rule 'MD009', :br_spaces => 0

# MD010 - Hard tabs
# => This rule is triggered by any lines that contain hard tab characters instead of using spaces for indentation. To
#    fix this, replace any hard tab characters with spaces instead.
rule 'MD010'

# MD011 - Reversed link syntax
# => This rule is triggered when text that appears to be a link is encountered, but where the syntax appears to have
#    been reversed (the [] and () are reversed)
rule 'MD011'

# MD012 - Multiple consecutive blank lines
# => This rule is triggered when there are multiple consecutive blank lines in the document:
rule 'MD012'

# MD013 - Line length
# Parameters: line_length (number; default 80)
# => This rule is triggered when there are lines that are longer than the configured line length (default: 80
#    characters). To fix this, split the line up into multiple lines.
# => This rule has an exception where there is no whitespace beyond the configured line length. This allows you to
#    still include items such as long URLs without being forced to break them in the middle.
rule 'MD013', :line_length => 119

# MD014 - Dollar signs used before commands without showing output
# => This rule is triggered when there are code blocks showing shell commands to be typed, and the shell commands are
#    preceded by dollar signs ($)
rule 'MD014'

# MD015: There seems to be no rule MD015
# MD016: There seems to be no rule MD016
# MD017: There seems to be no rule MD017

# MD018 - No space after hash on atx style header
# => This rule is triggered when spaces are missing after the hash characters in an atx style header
rule 'MD018'

# MD019 - Multiple spaces after hash on atx style header
# => This rule is triggered when more than one space is used to separate the header text from the hash characters in an
#    atx style header
rule 'MD019'

# MD020 - No space inside hashes on closed atx style header
# => This rule is triggered when spaces are missing inside the hash characters in a closed atx style header
rule 'MD020'

# MD021 - Multiple spaces inside hashes on closed atx style header
# => This rule is triggered when more than one space is used to separate the header text from the hash characters in a
#    closed atx style header
rule 'MD021'

# MD022 - Headers should be surrounded by blank lines
# => This rule is triggered when headers (any style) are either not preceded or not followed by a blank line
rule 'MD022'

# MD023 - Headers must start at the beginning of the line
# => This rule is triggered when a header is indented by one or more spaces
rule 'MD023'

# MD024 - Multiple headers with the same content
# => This rule is triggered if there are multiple headers in the document that have the same text
rule 'MD024'

# MD025 - Multiple top level headers in the same document
# => This rule is triggered when a top level header is in use (the first line of the file is a h1 header), and more
#    than one h1 header is in use in the document
#rule 'MD025'

# MD026 - Trailing punctuation in header
# Parameters: punctuation (string; default ".,;:!?")
# => This rule is triggered on any header that has a punctuation character as the last character in the line
rule 'MD026', :punctuation => ".,;:!?"

# MD027 - Multiple spaces after blockquote symbol
# => This rule is triggered when blockquotes have more than one space after the blockquote (>) symbol
rule 'MD027'

# MD028 - Blank line inside blockquote
# => This rule is triggered when two blockquote blocks are separated by nothing except for a blank line
rule 'MD028'

# MD029 - Ordered list item prefix
# Parameters: style ("one", "ordered"; default "one")
# => This rule is triggered on ordered lists that do not either start with '1.' or do not have a prefix that increases
#    in numerical order (depending on the configured style, which defaults to 'one').
rule 'MD029', :style => :ordered

# MD030 - Spaces after list markers
# Parameters: ul_single, ol_single, ul_multi, ol_multi (number, default 1)
# => This rule checks for the number of spaces between a list marker (e.g. '-', '*', '+' or '1.') and the text of the
#    list item.
# => The number of spaces checked for depends on the document style in use, but the default is 1 space after any list
#    marker
rule 'MD030', :ul_single => 1, :ol_single => 1, :ul_multi => 1, :ol_multi => 1

# MD031 - Fenced code blocks should be surrounded by blank lines
# => This rule is triggered when fenced code blocks are either not preceded or not followed by a blank line
rule 'MD031'

# MD032 - Lists should be surrounded by blank lines
# => This rule is triggered when lists (of any kind) are either not preceded or not followed by a blank line
rule 'MD032'

# MD033 - Inline HTML
# => This rule is triggered whenever raw HTML is used in a markdown document
#rule 'MD033'

# MD034 - Bare URL used
# => This rule is triggered whenever a URL is given that isn't surrounded by angle brackets
rule 'MD034'

# MD035 - Horizontal rule style
# Parameters: style ("consistent", "---", "*", or other string specifying the horizontal rule; default "consistent")
# => This rule is triggered when inconsistent styles of horizontal rules are used in the document
rule 'MD035', :style => "-----------------------------------------------------------------------------------------------------------------------"

# MD036 - Emphasis used instead of a header
# => This check looks for instances where emphasized (i.e. bold or italic) text is used to separate sections, where a
#    header should be used instead
#rule 'MD036'

# MD037 - Spaces inside emphasis markers
# => This rule is triggered when emphasis markers (bold, italic) are used, but they have spaces between the markers and
#    the text
rule 'MD037'

# MD038 - Spaces inside code span elements
# => This rule is triggered on code span elements that have spaces right inside the backticks
rule 'MD038'

# MD039 - Spaces inside link text
# => This rule is triggered on links that have spaces surrounding the link text
rule 'MD039'

# MD040 - Fenced code blocks should have a language specified
# => This rule is triggered when fenced code blocks are used, but a language isn't specified
rule 'MD040'

# MD041 - First line in file should be a top level header
# => This rule is triggered when the first line in the file isn't a top level (h1) header
# rule 'MD041'
