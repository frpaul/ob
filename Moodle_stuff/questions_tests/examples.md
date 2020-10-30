useful termines:

cloze
catch-all
GIFT notation

----------
// text 	Comment until end of line (optional)

::title: 	Question title (optional)

text 	Question text (becomes title if no title specified)

[…format…] 	The format of the following bit of text. Options are [html], [moodle], [plain] and [markdown]. The default is [moodle] for the question text, other parts of the question default to the format used for the question text.

{ 	Start answer(s) – without any answers, text is a description of following questions

{T} or {F} 	True or False answer; also {TRUE} and {FALSE}

{ … =right … } 	Correct answer for multiple choice, (multiple answer? – see page comments) or fill-in-the-blank

{ … ~wrong … } 	Incorrect answer for multiple choice or multiple answer

{ … =item -> match … } 	Answer for matching questions

#feedback text 	Answer feedback for preceding multiple, fill-in-the-blank, or numeric answers

####general feedback 	General feedback

{# 	Start numeric answer(s)

answer:tolerance 	Numeric answer accepted within ± tolerance range

low..high 	Lower and upper range values of accepted numeric answer

=%n%answer:tolerance 	n percent credit for one of multiple numeric ranges within tolerance from answer

} 	End answer(s)

\character 	Backslash escapes the special meaning of ~, =, #, {, }, and :

\n 	Places a newline in question text – blank lines delimit questions

----------

Examples:

// true/false
::Q1:: 1+1=2 {T}

// multiple choice with specified feedback for right and wrong answers
::Q2:: What's between orange and green in the spectrum? 
{ =yellow # right; good! ~red # wrong, it's yellow ~blue # wrong, it's yellow }

// fill-in-the-blank
::Q3:: Two plus {=two =2} equals four.

// matching
::Q4:: Which animal eats which food? { =cat -> cat food =dog -> dog food }

// math range question
::Q5:: What is a number from 1 to 5? {#3:2}

// math range specified with interval end points
::Q6:: What is a number from 1 to 5? {#1..5}

// translated on import to the same as Q5, but unavailable from Moodle question interface
// multiple numeric answers with partial credit and feedback
::Q7:: When was Ulysses S. Grant born? {#
         =1822:0      # Correct! Full credit.
         =%50%1822:2  # He was born in 1822. Half credit for being close.
}

// essay
::Q8:: How are you? {}

-----------

Multiple choice with multiple right answers

That is, using checkboxes, not radio buttons:
What two people are entombed in Grant's tomb? {
   ~%-100%No one
   ~%50%Grant
   ~%50%Grant's wife
   ~%-100%Grant's father
}
------------
True-false

In this question-type the answer indicates whether the statement is true or false. The answer should be written as {TRUE} or {FALSE}, or abbreviated to {T} or {F}.
// question: 0 name: TrueStatement using {T} style
::TrueStatement about Grant::Grant was buried in a tomb in New York City.{T}
// question: 0 name: FalseStatement using {FALSE} style
::FalseStatement about sun::The sun rises in the West.{FALSE}

----------

Matching

Matching pairs begin with an equal sign (=) and are separated by this symbol “->”. There must be at least three matching pairs.
Match the following countries with their corresponding capitals. {
   =Canada -> Ottawa
   =Italy  -> Rome
   =Japan  -> Tokyo
   =India  -> New Delhi
   }

Matching questions do not support feedback or percentage answer weights.

----------

Missing word

The Missing Word format automatically inserts a fill-in-the-blank line (like this _____) in the middle of the sentence. To use the Missing Word format, place the answers where you want the line to appear in the sentence.

Moodle costs {~lots of money =nothing ~a small amount} to download from moodle.org.

If the answers come before the closing punctuation mark, a fill-in-the-blank line will be inserted for the “missing word” format. All question types can be written in the Missing Word format.

**There must be a blank line (double carriage return) separating questions.** For clarity, the answers can be written on separate lines and even indented. Some examples:
Mahatma Gandhi's birthday is an Indian holiday on  {
~15th
~3rd
=2nd
} of October.
Since {
  ~495 AD
  =1066 AD
  ~1215 AD
  ~ 43 AD
}
the town of Hastings England has been “famous“ \ ``with“ \ ``visitors”.

-------------

Percentage Answer Weights

Percentage answer weights are available for both Multiple Choice and Short Answer questions. Percentage answer weights can be included by following the tilde (for Multiple Choice) or equal sign (for Short Answer) with the desired percent enclosed within percent signs (e.g., %50%). This option can be combined with feedback comments.

Difficult question.{~wrong answer ~%50%half credit answer =full credit answer}
::Jesus' hometown::Jesus Christ was from {
   ~Jerusalem#This was an important city, but the wrong answer.
   ~%25%Bethlehem#He was born here, but not raised here.
   ~%50%Galilee#You need to be more specific.
   =Nazareth#Yes! That's right!
}.
    
::Jesus' hometown:: Jesus Christ was from {
   =Nazareth#Yes! That's right!
   =%75%Nazereth#Right, but misspelled.
   =%25%Bethlehem#He was born here, but not raised here.
}

Note that the last two examples are essentially the same question, first as multiple choice and then as short answer.

Note that it is possible to specify percentage answer weights that are NOT available through the browser interface. The Match Grades drop-down on the import page determines how these are handled. You can either request that an error be reported or that the answer weight be adjusted to the nearest valid answer weight.

Note specifically, that Moodle uses 5 decimal places to do its math, so if you wish to divide percentages in thirds, use %33.33333 instead of %33 or %33.33.

Specify text-formatting for the question The question text (only) may have an optional text format specified. Currently the available formats are moodle (Moodle Auto-Format), html (HTML format), plain (Plain text format) and markdown (Markdown format). The format is specified in square brackets immediately before the question text. See Formatting text for further information.
[markdown]The *American holiday of Thanksgiving* is celebrated on the {
   ~second
   ~third
   =fourth
} Thursday of November.



