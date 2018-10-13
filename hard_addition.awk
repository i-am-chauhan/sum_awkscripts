#! /usr/bin/awk -f
BEGIN{
  FS=""
  sum=""
}

{
  i=1
  ln=length($0)
  number_of_field=NF
  while(ln){
    numbers[i]=numbers[i]+$number_of_field
    number_of_field--
    i++
    ln--
  }
};
END{
  for(j=1;j<=length(numbers);j++){
    digit=numbers[j]+carry
    split(digit,digits,"")
    carry=int(digit/10)
    indx=length(digits)
    sum=digits[indx]""sum
  }
  sum=carry""sum
  print sum
}

