
BEGIN { Lv=0; oldEXP=0; oldNEXT=0 }

NF==2 { Lv+=1; newEXP=$1+$2; newNEXT=newEXP-oldEXP; incNEXT=newNEXT-oldNEXT
        printf "%2d) %6d %5d %6d %5d %3d\n", Lv, $1, $2, newEXP, newNEXT, incNEXT
        oldEXP=newEXP; oldNEXT=newNEXT
      }
