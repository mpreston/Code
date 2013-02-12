

List<Word> words;

void setup() {
  size(500,500);  
  
  Map<String, List<String>> wordMap = loadInWords("words.txt"); 
  
  words = parseGrammar(wordMap);
}


/*** 
  Loads in a text file indicating words assoicated with parts of speech, parses it, 
  and returns a Map of each part of speech and its assoicated List of words.
  Assumes each line looks like:

    POS:word1,word2,...,wordN
***/  
Map<String, List<String>> loadInWords() {
  Map<String, List<String>> m = new HashMap<String, List<String>>();
  
  String[] lines = loadStrings("words.txt");
  
  for (int i = 0 ; i < lines.length; i++) {
    println(lines[i]);
    String[] chop = split(lines[i], ':');
    
    String POS = chop[0];
    String wordsStr = chop[1];
    
    String[] wordsArr = split(wordStr, ',');
    List<String> wordsList = Arrays.asList(wordsArr);
    
    m.put(POS, wordsList);
  }
  
  return m;
}


/***
  Reads through a text file of parts of speech and looks through a Map m for a random word 
  that corresponds to each part of speech. Returns a populated List of Word objects, where
  each type of Word has its own render() method.
***/

List<Word> parseGrammar( Map<String, List<String>> m) {
  // TO DO - 
  // 1. Load in Strings from "grammar.txt" and loop through each line.
  // 2. For each POS in the line, get the associated List of words from Map m.
  // 3. Choose a random word from the list.
  // 4. Place this word in a List that we will read from in the draw() loop. 
 }



void draw() {
   background(255,0,0,255); 
   
   for (Word w : words) {
     w.render();
   }
}
  
