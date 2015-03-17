#!/usr/bin/tclsh

# 1. Guidelines

# Braces are a quoting mechanism, not a code block constructor or a list
# constructor. Tcl doesn't have either of those things. Braces are used,
# though, to escape special characters in procedure bodies and in strings that
# are formatted as lists.

# 2. Syntax

# Every line is a ommand. The first word is the name of the command, and
# subsequent words are arguments to the command. Words are delimited by
# whitespace. Since every word is a string, in the simple case no special
# markup such as quotes, braces or backslash is necessary. Even when quotes
# are used, they are not a string constructor, but just another escaping
# character.

set greeting1 Sal
set greeting2 ut
set greeting3 ations

# semicolons also delimit commands
set greeting1 Sal; set greeting2 ut; set greeting3 ations

# Dollar sign introduces variable substitution
set greeting $greeting1$greeting2$greeting3

# Bracket introduces command substitution. The result of the command is
# substituted in place of the bracketed script. When the "set" command is
# given only the name of a variable, it returns the value of that variable.
set greeting $greeting1$greeting2[set greeting3]

# Command substitution should really be called script substitution, because an
# entire script, not just a command can be placed between the brackets. The
# "incr" command increments the value of a variable and returns its value.
set greeting $greeting[
    incr i
	incr i
	incr i
]

# backslash suppresses the special meaning of characters
set amount \$16.42

# backslash adds special meaning to certain characters
puts lots\nof\n\n\n\n\nnewlines

# A word enclosed in braces is not subject to any special interpretation or
# substitutions, except that a backslash before a brace is not counted when
# looking for the closing brace
set somevar {
	This is a literal $ sign, and this \} escaped
	brace remains uninterpreted
}
puts $somevar

# In a word enclosed in double quotes, whitespace characters lose their
# special meaning.
set name Neo
set greeting "Hello, $name"

# Variable names can be any string
set {first name} New

# The brace form of variable substitution handles more complex variable names.
set greeting "Hello, ${first name}"

# The set command can always be used instead of variable substitution
set greeting "Hello, [set {first name}]"

# To promote the words within a word to individual words of the current
# command, use the expansion operator, "{*}".
set {*}{name Neo}

# is equivilent to
set name Neo

# An array is a special variable that is a container for other varaibles.
set person(name) Neo
set person(gender) male
puts "Hello, $person(name) who is $person(gender)"

# A namespace holds commands and variables
namespace eval people {
	namespace eval person1 {
		set name Neo
	}
}

# The full name of a variable includes its enclosing namespaces delimited by
# two colons
puts "Hello $people::person::name"

