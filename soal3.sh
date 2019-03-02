#!/bin/bash

loop=1
num=1
valid=0
while [ $loop -ne 0 ]
do
        if [[ -f /home/haikal/praktikum1/no3/password$num.txt ]] ; then
            num=$((num + 1))
        else
        while [ $valid -ne 1 ]
        do
                besar=0
                kecil=0
                angka=0
                pass="$(dd if=/dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n 1)"
                for ((i=0; i<12; i++))
                do
                        if [[ ${pass:$i:1} == [[:upper:]] ]]
                                then
                                let besar=$besar+1;
                        elif [[ ${pass:$i:1} == [[:lower:]] ]]
                                then
                                let kecil=$kecil+1;
                        elif [[ ${pass:$i:1} == [0-9] ]]
                                then
                                let angka=$angka+1;
                        fi
                done
                if [[ ($besar -gt 0 && $kecil -gt 0 && $angka -gt 0) ]]
                        then
                        valid=1;
                fi
        done
        echo $pass >> /home/haikal/praktikum1/no3/password$num.txt
        cat /home/haikal/praktikum1/no3/password$num.txt
        loop=0
        fi
done
