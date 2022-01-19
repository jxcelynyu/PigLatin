public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int x = 0; x < sWord.length(); x++)
    if(sWord.substring(x,x+1).equals("a"))
    return x;
    else if(sWord.substring(x,x+1).equals("e"))
    return x;
    else if(sWord.substring(x,x+1).equals("i"))
    return x;
    else if(sWord.substring(x,x+1).equals("o"))
    return x;
    else if(sWord.substring(x,x+1).equals("u"))
    return x;
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(findFirstVowel(sWord) == 1)
  {
    if(sWord.substring(0,2).equals ("qu") == true)
      return sWord.substring(2) + sWord.substring(0,2) + "ay";
    return sWord.substring(1) + sWord.substring(0,1) + "ay";
  }
  else if(findFirstVowel(sWord) == 2)
  {
    return sWord.substring(2) + sWord.substring(0,2) + "ay";
  }
  else if(findFirstVowel(sWord) == 3)
  {
    return sWord.substring(3) + sWord.substring(0,3) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
