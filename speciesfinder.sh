# Finds species in q 13 to be used to prevent repetitiveness in q 14

grep ">" test.fa | sort > species.txt && sed -i "s/PREDICTED: //g" species.txt && cut -d " " -f 2,3 species.txt
