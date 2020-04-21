# Letter Template For Pandoc

A letter template for Pandoc.

## Requirements

- [xelatex](http://xetex.sourceforge.net/)
- [Source Code Pro Font](https://github.com/adobe-fonts/source-code-pro)
- [Source Sans Pro Font](https://github.com/adobe-fonts/source-sans-pro)
- [Source Serif Pro Font](https://github.com/adobe-fonts/source-serif-pro)

## Usage

See Makefile.

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

* `date`: If you don’t set a custom date, the current date will be used.
* `closing`: Use a custom closing.
* `signature`: If set to true, there will be signature field under the closing.
* `language`: Language of the letter. This is used for the date format and
  typesetting. Defaults to `ngerman`.
