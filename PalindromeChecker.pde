public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  if(onlyLetters(noSpaces(word.toLowerCase())).equals(reverse(onlyLetters(noSpaces(word.toLowerCase()))))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length(); i > 0; i--) {
      sNew = sNew + str.substring(i-1, i);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String string = new String();
  for(int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      string = string + sString.substring(i, i+1);
    }
  }

  return string;
}
public String noSpaces(String sWord){
  String string = new String();
  for(int i = 0; i < sWord.length(); i++) {
    if(!sWord.substring(i, i+1).equals(" ")) {
      string = string + sWord.substring(i, i+1);
    }
  }
  return string;
}
