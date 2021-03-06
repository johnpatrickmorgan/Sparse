//

import Foundation

let dotStringsExample = #"""
/*
valid.strings
Sparse

Created by John Morgan on 09/12/2016.
Copyright © 2016 CocoaPods. All rights reserved.
*/

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

// Unattached single-line comment to be skipped

/* Unattached multi-line comment to be skipped,
because it is not attached to a translation */

"K: commentless key" = "V: commentless translation";

/* Multiline-style comment on preceding line */
"K: Multiline-style comment on preceding line" = "V: Multiline-style comment on preceding line";

"K: Single-line comment on same line" = "V: Single-line comment on same line"; // Single-line comment on same line

/* Multiline-style comment on preceding lines
An example of more than one line comment */
"K: Multiline-style comment on multiple lines" = "V: Multiline-style comment on multiple lines";

/* Combined multi-line and single-line comments */
"K: Combined multi-line and single-line comments" = "V: Combined multi-line and single-line comments"; // These should be combined on new lines

// Several lines of single-line style comments
// These should be combined on new lines
"K: Several lines of single-line style comments" = "V: Several lines of single-line style comments";

/* Unattached comment to be skipped */

"K: no whitespace"="V: no whitespace";
"K: no preceding double newline" = "V:no preceding double newline";

"K: with \"escaped quotes\"" = "V: with \"escaped quotes\"";

"K: with a\new line" = "V:  with a\new line";

"""#
