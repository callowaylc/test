#!/usr/bin/env ruby

def find_longest_palindrome(s)  
  longest = ""  

  0.upto s.length do | i |  
   odd = palindrome_at_position(s, i, i)  
   longest = odd if odd.length > longest.size  
   # handle even length palindromes  
   even = palindrome_at_position(s, i, i+1)  
   longest = even if even.length > longest.size  
  end  
  longest  
end
 def palindrome_at_position(s, left, right)  
  palindrome = ""  
  while (right < s.length &&  
      left >= 0 &&  
      s[left] == s[right])  
   palindrome = s[left,(right-left+1)]  
   left -= 1  
   right += 1  
  end  
  palindrome   
 end


# recursive
def longest_palindrome(string, size)
  string.size.times do |start| # loop over the size of the string
    break if start + size > string.size # bounds check

    reverse = string[start, size].reverse

    if string.include? reverse #look for palindrome
      return reverse #return the largest palindrome
    end
  end
  longest_palindrome(string, size - 1) # Palindrome not found, lets look for the next smallest size 
end


text = "FourscoreandsevenyearsagoourfaathersbroughtforthonthiscontainentanewnationconceivedinzLibertyanddedicatedtothepropositionthatallmenarecreatedequalNowweareengagedinagreahtcivilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"

puts longest_palindrome text, text.length
