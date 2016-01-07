int x = 0;

proctype Check() {
   assert (x >= 0 && x <= 200)
}

proctype Inc() { 
   do :: true -> if :: (x < 200) -> x = x + 1 fi od
}

proctype Dec() { 
  do :: true -> if :: (x > 0) -> x = x - 1 fi od
}
  
proctype Reset() { 
  do::true-> if::(x==200) -> x=0 fi od
}
  
init { 
 atomic{ run Inc() ; run Dec() ; run Reset(); run Check() }
}
