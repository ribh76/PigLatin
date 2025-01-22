public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
  String vowels = ("aeiou");
  for (int i = 0; i < sWord.length(); i++){
    if (vowels.indexOf(sWord.charAt(i)) != -1) {
            return i; 
    }
    return -1;
  }

//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1

public String pigLatin(String sWord){
  sWord = sWord.toLowerCase();
  int vowelIndex = findFirstVowel(sWord);
  if(vowelIndex == -1)
  {
    return sWord + "ay";
  }
  else if (vowelIndex == 0)
  {
    return sWord + "yay";
  }
  else{
    String start = sWord.substring(0,vowelIndex);
    String end = sWord.substring(vowelIndex);
    return sWord + "yay";
  }
  
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord  
}
