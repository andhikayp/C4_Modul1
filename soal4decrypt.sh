#!/bin/bash

lowerCase=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upperCase=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

for file in /home/haikal/praktikum1/no4/encrypted/*.txt
do

hour=${file:38:2}
let reverse=$hour*-1
filename=${file:38:16}
lower=${lowerCase[$reverse]}
upper=${upperCase[$reverse]}

cat "$file" | tr '[a-z]' "[$lower-za-$lower]" | tr '[A-Z]' "[$upper-ZA-$upper]" >> /home/haikal/praktikum1/no4/decrypted/"$filename".txt
