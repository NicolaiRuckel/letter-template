# Letter Template For Pandoc

A letter template for Pandoc.

## Requirements

- [xelatex](http://xetex.sourceforge.net/)

## Usage

This template is used to generate a letter out of a Pandoc Markdown file.  You
have to use xelatex as the pdf engine with `--pdf-engine=xelatex`. You can
either edit the `letter.md` file and use the provided Makefile or put the
`letter.latex` file in your Pandoc template directory (see the Pandoc manual
entry for `--data-dir` for more information).

### YAML Metdata Block

Everything is configured with YAML on top of the Markdown file, i.e.

```yaml
---
sender-name: "Sender Name"
sender-street: "Sender Street"
sender-city: "54321 City"
recipient-name: "Recipient Name"
recipient-street: "Recipient Street"
recipient-city: "Recipient City"
date: "2017-02-20"
closing: "bar"
signature: true
lang: de
...
```

#### Required Fields

You have to specify these fields, otherwise it won’t compile.

* `sender-name`
* `sender-street`
* `sender-city`

* `recipient-name`
* `recipient-street`
* `recipient-city`

#### Optional Fields

You can set those fields, otherwise the default value will be used.

* `papersize`: Default is `a4`.
* `date`: If you don’t set a custom date, the current date will be used.
* `closing`: Use a custom closing.
* `signature`: If set to true, there will be signature field under the closing.
* `language`: Language of the letter. This is used for the date format and
  typesetting. Defaults to `en`.
