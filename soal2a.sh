#!/bin/bash

awk -F, '{if($7=='2012') iter [$1]+=$10} END{for (hasil in iter) print iter[hasil], hasil}' WA_Sales_Products_2012-14.csv OFS=',' | sort -nr | head -n1 | awk -F, '{print $2}'
