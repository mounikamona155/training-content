# More CSharp topics week 3
# Regular Expressions
- A regular expression is a special sequence of characters that describe a pattern of text that should be found, or matched, in a string or document. 
- By matching text, we can identify how often and where certain pieces of text occur, as well as have the opportunity to replace or update these pieces of text if needed.
- Where do you need regukar expressions?
    - Validating user's input in a form
    - verify and parse any text files, code, application.
    - examie test results
    - finding keyword in the web pages, emails.

## Character Sets -[]
- practise or practice, consencous or concesous
    - practi[sc]e - match with practise and practice
    - con[sc]en[sc]ous - will match with consencous or concesous
## Literals - exact match 
- `3.14 will` match exactly with `3.14`
- `chennai has best dosas` will match exactly with `chennai has best dosas` 

## Alternation |
- allowing for the matching between 2 sub expression
    - `I love Chennai|Madras`

## Ranges -
- [A-Z] - match any uppercase letter
- [a-z] - match any lowercase letter
- [0-9] - matches any digit
- [a-zA-Z0-9 ] - matches any lowercase, uppercase letter or any digit.
## Short hand character classes 
- \w - [A-Za-z0-9]
- \d - [0-9]
- \W - not [A-Za-z0=9] or [^A-Za-z0-9]
- \D - not [0-9] or [^0-9]
- \s - single space
- \t - tab
- \r - carriage return
- \n - newline
- ? - optional
- ^ - not - [^A] ,means not A
- ^ - string beginning  - ^I love Chennai
- $ - String end  - I love Chennai$
    - ^I love Chennai$

## Wild card characters .
- . represents matching with a single character(letter, number, symbol, whitespace)
- ... -> matches Joe, Jon, Ron
- Eg `...athan' -> Jonathan, Ronathan,   Nathan etc...

## Kleen Star(*), Kleen Plus (+)
- * - means 0 or more charcates : Eg - h*t -> ht, hot, hoot, hooot
- + - means 1 or more characters : Eg h+t -> hot, hoot, hooot

## Grouping ()
- `I love (Chennai|Madras|Bombay|Mumbai)`

## Quantifiers {}
- PAN Card - 5 letters, 4 digits, 1 letter
    - [A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][A-Z] - is ineffective
    - [A-Z]{5}[0-9]{4}[A-Z]
- Aadhar number - \d{4}\s\d{4}\s\d{4}
- DOB - dd/MMM/yyyy
    - `^(([0-9])|([0-2][0-9])|([3][0-1]))\ (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\ \d{4}$`
- Email - `\w+@\w+\.\w{2,4}\.?\w{0,2}`

# References:
- [Practise Regular Expressions Basics](https://www.codecademy.com/learn/introduction-to-regular-expressions)