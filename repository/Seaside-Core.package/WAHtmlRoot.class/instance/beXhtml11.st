doctype
beXhtml11
	self greaseDeprecatedApi: 'WACookie>>#beXhtml11' details: 'Use #beHtml5 instead.'.
	self meta contentScriptType: WAMimeType textJavascript.
	self addXmlNamespaces.
	self docType: '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">'