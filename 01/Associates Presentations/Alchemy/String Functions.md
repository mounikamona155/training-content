# [_String Functions_](https://learn.microsoft.com/en-us/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver16)
## String functions
### are used to perform an operation on input string and return an output string.
## [ASCII(character):](https://www.w3schools.com/sql/func_sqlserver_ascii.asp)
- The ASCII() function returns the ASCII value for the specific character.
- `SQL`> SELECT ASCII('A')
- `OUTPUT`: 65
## [CHAR(code):](https://www.w3schools.com/sql/func_sqlserver_char.asp#:~:text=The%20CHAR()%20function%20returns%20the%20character%20based%20on%20the%20ASCII%20code.)
- The CHAR() function returns the character based on the ASCII code.
- `SQL`> select char(65)
- `OUTPUT`: A
## [CHARINDEX(substring, string, start):](https://www.w3schools.com/sql/func_sqlserver_charindex.asp)
- The CHARINDEX() function searches for a substring in a string, and returns the position.
- `SQL`> SELECT CHARINDEX('A','TRAINING')
- `OUTPUT`: 3
## [PATINDEX(%pattern%, string):](https://www.w3schools.com/sql/func_sqlserver_patindex.asp)
- The PATINDEX() function returns the position of a pattern in a string.
- `SQL`> SELECT PATINDEX('%[H]%', 'ALCHEMY')
- `OUTPUT`: 4
## [CONCAT(string1, string2, ...., string_n):](https://www.w3schools.com/sql/func_sqlserver_concat.asp)
- The CONCAT() function adds two or more strings together.
- `SQL`> select CONCAT('a','b','c')
- `OUTPUT`: abc
## [CONCAT_WS(separator, expression1, expression2, expression3,...):](https://www.w3schools.com/sql/func_mysql_concat_ws.asp)
- The CONCAT_WS() function adds two or more expressions together with a separator.
- `SQL`> select CONCAT_WS('-','Team','Alchemy','Activity')
- `OUTPUT`: Team-Alchemy-Activity
## [QUOTENAME(string, quote_char):](https://www.w3schools.com/sql/func_sqlserver_quotename.asp)
- The QUOTENAME() function returns a Unicode string with delimiters added to make the string a valid SQL Server delimited identifier.
- `SQL`> SELECT QUOTENAME('ALCHEMY', '{}')
- `OUTPUT`: {ALCHEMY}
## [LOWER(text):](https://www.w3schools.com/sql/func_sqlserver_lower.asp#:~:text=The%20LOWER()%20function%20converts%20a%20string%20to%20lower%2Dcase.)
- The LOWER() function converts a string to lower-case.
- `SQL`> select LOWER('ALCHEMY')
- `OUTPUT`: alchemy
## [UPPER(text):](https://www.w3schools.com/sql/func_sqlserver_upper.asp)
- The UPPER() function converts a string to upper-case.
- `SQL`> select UPPER('alchemy')
- `OUTPUT`: ALCHEMY
## [LTRIM(string):](https://www.w3schools.com/sql/func_sqlserver_ltrim.asp)
- The LTRIM() function removes leading spaces from a string.
- `SQL`> SELECT LTRIM('        TEAM ALCHEMY')
- `OUTPUT`: TEAM ALCHEMY
## [RTRIM(string):](https://www.w3schools.com/sql/func_sqlserver_rtrim.asp)
- The RTRIM() function removes trailing spaces from a string.
- `SQL`> SELECT RTRIM('TEAM ALCHEMY      ')
- `OUTPUT`: TEAM ALCHEMY
## [TRIM([characters FROM ]string):](https://www.w3schools.com/sql/func_sqlserver_trim.asp)
- The TRIM() function removes the space character OR other specified characters from the start or end of a string.
- `SQL`> SELECT TRIM('@' FROM '@TEAM ALCHEMY      ')
- `OUTPUT`: TEAM ALCHEMY
## [SPACE(number):](https://www.w3schools.com/sql/func_sqlserver_space.asp)
- The SPACE() function returns a string of the specified number of space characters.
- `SQL`> SELECT RTRIM('HELLO     ')+SPACE(10)+LTRIM('    ALCHEMY')
- `OUTPUT`: HELLO          ALCHEMY
## [REVERSE(string):](https://www.w3schools.com/sql/func_sqlserver_reverse.asp)
- The REVERSE() function reverses a string and returns the result.
- `SQL`> SELECT REVERSE('YMEHCLA STI')
- `OUTPUT`: ITS ALCHEMY
## [REPLACE(string, old_string, new_string):](https://www.w3schools.com/sql/func_sqlserver_replace.asp)
- The REPLACE() function replaces all occurrences of a substring within a string, with a new substring.
- `SQL`> SELECT REPLACE('HELLO GUYS','GUYS','ALCHEMY')
- `OUTPUT`: HELLO ALCHEMY
## [STUFF(string, start, length, new_string):](https://www.w3schools.com/sql/func_sqlserver_stuff.asp)
- The STUFF() function deletes a part of a string and then inserts another part into the string, starting at a specified position.
- `SQL`> SELECT STUFF('SQL Tutorial!', 13, 1, ' is fun!')
- `OUTPUT`: SQL Tutorial is fun!
## [TRANSLATE(string, characters, translations):](https://www.w3schools.com/sql/func_sqlserver_translate.asp)
- The TRANSLATE() function returns the string from the first argument after the characters specified in the second argument are translated into the characters specified in the third argument.
- `SQL`> select TRANSLATE('3*[2+1]/{8-4}', '[]{}', '()()')
- `OUTPUT`: 3*(2+1)/(8-4)
## [LEN(string):](https://www.w3schools.com/sql/func_sqlserver_len.asp)
- The LEN() function returns the length of a string.
- `SQL`> select LEN('TEAM ALCHEMY')
- `OUTPUT`: 12
## [SUBSTRING(string, start, length):](https://www.w3schools.com/sql/func_sqlserver_substring.asp)
- The SUBSTRING() function extracts some characters from a string.
- `SQL`> SELECT SUBSTRING('ALCHEMY TEAM',1,7)
- `OUTPUT`:ALCHEMY
## [RIGHT(string, number_of_chars):](https://www.w3schools.com/sql/func_sqlserver_right.asp)
- The RIGHT() function extracts a number of characters from a string (starting from right).
- `SQL`> SELECT RIGHT('TRAINING',4) 
- `OUTPUT`: NING
## [LEFT(string, number_of_chars):](https://www.w3schools.com/sql/func_sqlserver_left.asp)
- The LEFT() function extracts a number of characters from a string (starting from left).
- `SQL`> SELECT LEFT('TRAINING',5)
- `OUTPUT`: TRAIN
## [REPLICATE(string, integer):](https://www.w3schools.com/sql/func_sqlserver_replicate.asp)
- The REPLICATE() function repeats a string a specified number of times.
- `SQL`> SELECT REPLICATE('ALCHEMY ', 5)
- `OUTPUT`: ALCHEMY ALCHEMY ALCHEMY ALCHEMY ALCHEMY 
## [STRING_SPLIT ( string , separator):](https://learn.microsoft.com/en-us/sql/t-sql/functions/string-split-transact-sql?view=sql-server-ver16)
- The STRING_SPLIT() function is a table-valued function that splits a string into a table that consists of rows of substrings based on a specified separator.
- `SQL`> SELECT value FROM STRING_SPLIT('The Team Alchemy', ' ')
-   |value   |
    |:------:|
    |The     |
    |Team    |
    |Alchemy |
## [UNICODE(character_expression):](https://www.w3schools.com/sql/func_sqlserver_unicode.asp)
- The UNICODE() function returns an integer value (the Unicode value), for the first character of the input expression.
- `SQL`> SELECT UNICODE('Alchemy')
- `OUTPUT`: 65