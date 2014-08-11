component output="false" {

	function init() {
		return this;
	}

	public string function singularize(required string word) {
		exceptionCheck = singularizeExceptions(arguments.word);
		if(exceptionCheck neq "standardSingularization") {
			return exceptionCheck;
		}
		else if(right(arguments.word, 3) EQ 'ves') {
			return mid(arguments.word, 1, len(arguments.word)-3) & 'fe';
		}
		else if(right(arguments.word, 3) EQ 'ies') {
			return mid(arguments.word, 1, len(arguments.word)-3) & 'y';
		}
		else if(right(arguments.word, 3) EQ 'xes' OR right(arguments.word, 3) EQ  'ses') {
			return mid(arguments.word, 1, len(arguments.word)-2);
		}
		else if(right(arguments.word, 4) EQ 'ches') {
			return mid(arguments.word, 1, len(arguments.word)-2);
		}
		else if(right(arguments.word, 2) eq 'es') {
			thirdChar =  mid(arguments.word, len(arguments.word)-3, 1);
			switch(thirdChar) {
				case "x": case "s": case "h":
					return mid(arguments.word, 1, len(arguments.word)-2);
					break;
				default:
					return mid(arguments.word, 1, len(arguments.word)-1);
					break;
			}
		}
		else if(right(arguments.word, 1) eq 's') {
			return mid(arguments.word, 1, len(arguments.word)-1);
		}
		else {
			return arguments.word;
		}
	}
	
	private string function singularizeExceptions(required string word) {
		switch(arguments.word) {
			case "children":
				return "child";
				break;
			case "women":
				return "woman";
				break;
			case "men":
				return "man";
				break;
			case "people":
				return "person";
				break;
			case "geese":
				return "goose";
				break;
			case "mice":
				return "mouse";
				break;
			case "nuclei":
				return "nucleus";
				break;
			case "syllabi":
				return "syllabus";
				break;
			case "foci":
				return "focus";
				break;
			case "fungi":
				return "fungus";
				break;
			case "cacti": case "cactuses":
				return "cactus";
				break;
			case "theses":
				return "thesis";
				break;
			case "crises":
				return "crisis";
				break;
			case "phenomena":
				return "phenomenon";
				break;
			case "indices": case "indexes":
				return "index";
				break;
			case "apendices": case "appendixes":
				return "appendix";
				break;
			case "criteria":
				return "criterion";
				break;
			case "moose":
				return "moose";
				break;
			case "barracks":
				return "barracks";
				break;
			case "deer":
				return "deer";
				break;
			case "zombies":
				return "zombie";
				break;
			default:
				return "standardSingularization";
				break;
		}
	}

	public string function pluralize(required string word) {
		exceptionCheck = pluralizeExceptions(arguments.word);
		if(exceptionCheck neq "standardPluralization") {
			return exceptionCheck;
		}
		else if(right(arguments.word, 2) EQ 'fe') {
			return mid(arguments.word, 1, len(arguments.word)-2) & 'ves';
		}
		else if(right(arguments.word, 1) EQ 'y') {
			return mid(arguments.word, 1, len(arguments.word)-1) & 'ies';
		}
		else if(right(arguments.word, 1) eq 'x' or right(arguments.word, 1) eq 's' or right(arguments.word, 2) eq 'ch') {
			return arguments.word & 'es';
		}
		else {
			return arguments.word & 's';
		}
	}
	
	private string function pluralizeExceptions(required string word) {
		switch(arguments.word) {
			case "child":
				return "children";
				break;
			case "woman":
				return "women";
				break;
			case "man":
				return "men";
				break;
			case "person":
				return "people";
				break;
			case "goose":
				return "geese";
				break;
			case "mouse":
				return "mice";
				break;
			case "nucleus":
				return "nuclei";
				break;
			case "syllabus":
				return "syllabi";
				break;
			case "focus":
				return "foci";
				break;
			case "fungus":
				return "fungi";
				break;
			case "cactus":
				return "cacti";
				break;
			case "thesis":
				return "theses";
				break;
			case "crisis":
				return "crises";
				break;
			case "phenomenon":
				return "phenomena";
				break;
			case "index":
				return "indices";
				break;
			case "appendix":
				return "apendices";
				break;
			case "criterion":
				return "criteria";
				break;
			case "moose":
				return "moose";
				break;
			case "barracks":
				return "barracks";
				break;
			case "deer":
				return "deer";
				break;
			default:
				return "standardPluralization";
				break;
		}
	}
	
}