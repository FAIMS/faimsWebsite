BEGIN {
	
	RS="[^A-Za-z-]";
	old = "";
}

/[a-zA-Z-]{3,}/ {
	if ( tolower($0) !~ /^(a|able|about|across|after|all|almost|also|am|among|an|and|any|are|as|at|be|because|been|but|by|can|cannot|could|dear|did|do|does|either|else|ever|every|for|from|get|got|had|has|have|he|her|hers|him|his|how|however|i|if|in|into|is|it|its|just|least|let|like|likely|may|me|might|most|must|my|neither|no|nor|not|of|off|often|on|only|or|other|our|own|rather|said|say|says|she|should|since|so|some|than|that|the|their|them|then|there|these|they|this|tis|to|too|twas|us|wants|was|we|were|what|when|where|which|while|who|whom|why|will|with|would|yet|you|your)$/ && $0 !~ /^-/ && $0 !~ /-$/ && $0 !~/^[a-zA-Z-]-[a-zA-Z-]$/) {
			print old " " tolower($0);
			if ($0 ~ /-/)
				print tolower($0);
			old = tolower($0);
		
    }
}