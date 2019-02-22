#!/bin/bash

lowerCase=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upperCase=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

hour=`date "+%H"`

filename=`date "+%H:%M %d-%m-%Y"`

lower=${lowerCase[$hour]}
upper=${upperCase[$hour]}

cat /var/log/syslog | tr '[a-z]' "[$lower-za-$lower]" | tr '[A-Z]' "[$upper-ZA-$upper]" >> /home/haikal/praktikum1/no4/encrypted/"$filename".txt
