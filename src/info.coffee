exports.fontinfo =
	familyName: 'Spectral'
	version: '0.1.0'
	description: 'The parametric version of the Google Spectral by Production Type built in Prototypo'
	tags: [
		'all',
		'latin',
		'lowercase',
		'uppercase',
		'punctuation',
		'figures',
		'diacritic',
		'smallcap'
	]
	defaultAlts: {
		# 97: 'a',
		# 99: 'c',
		# 105: 'i',
		# 224: 'a_grave',
		# 225: 'a_acute',
		# 226: 'a_circumflex',
		# 228: 'a_dieresis',
		# 229: 'a_ring',
		# 231: 'c_cedilla',
		# 236: 'i_grave',
		# 237: 'i_acute',
		# 238: 'i_circumflex',
		# 239: 'i_dieresis',
		# 257: 'a_macron',
		# 259: 'a_breve',
		# 267: 'c_dotaccent',
		# 269: 'c_caron',
		# 299: 'i_macron',
		# 301: 'i_breve'
	}
	ascender: Math.max( ascenderHeight, capHeight ) * 1.3
	descender: descender - 50
	'cap-height': Math.max( ascenderHeight, capHeight ) * 1.3
	'descendent-height': descender - 50
	'glyph-order':
		'a': 'a'
		'b': 'b'
		'c': 'c'
		'd': 'd'
		'e': 'e'
		'f': 'f'
		'g': 'g'
		'h': 'h'
		'i': 'i'
		'j': 'j'
		'l': 'l'
		'm': 'm'
		'n': 'n'
		'o': 'o'
		'p': 'p'
		'q': 'q'
		'r': 'r'
		's': 's'
		't': 't'
		'u': 'u'
		'v': 'v'
		'w': 'w'
		'x': 'x'
		'y': 'y'
		'z': 'z'
		'A': 'A_cap'
		'B': 'B_cap'
		'C': 'C_cap'
		'D': 'D_cap'
		'E': 'E_cap'
		'F': 'F_cap'
		'G': 'G_cap'
		'H': 'H_cap'
		'I': 'I_cap'
		'J': 'J_cap'
		'K': 'K_cap'
		'L': 'L_cap'
		'M': 'M_cap'
		'N': 'N_cap'
		'O': 'O_cap'
		'P': 'P_cap'
		'Q': 'Q_cap'
		'R': 'R_cap'
		'S': 'S_cap'
		'T': 'T_cap'
		'U': 'U_cap'
		'V': 'V_cap'
		'W': 'W_cap'
		'X': 'X_cap'
		'Y': 'Y_cap'
		'Z': 'Z_cap'
		',': 'comma'
		';': 'semicolon'
		'.': 'period'
		':': 'colon'
		'-': 'hyphen'
		'!': 'exclam'
		'?': 'question'
		'\‘': 'quoteleft'
		'\’': 'quoteright'
		'\“': 'quotedblleft'
		'\”': 'quotedblright'
		'\'': 'quotesingle'
		'\"': 'quotedbl'
		'\«': 'guillemotleft'
		'\»': 'guillemotright'
		'(' : 'parenleft'
		')' : 'parenright'
		'[' : 'bracketleft'
		']' : 'bracketright'
		'{' : 'braceleft'
		'}' : 'braceright'
		'*' : 'asterisk'
		'$' : 'dollar'
		'0' : 'zero'
		'1' : 'one'
		'2' : 'two'
		'3' : 'three'
		'4' : 'four'
		'5' : 'five'
		'6' : 'six'
		'7' : 'seven'
		'8' : 'eight'
		'9' : 'nine'
		'+' : 'plus'
		'&' : 'ampersand'
		'À' : 'a_cap_grave'
		'Á' : 'a_cap_acute'
		'Â' : 'a_cap_circumflex'
