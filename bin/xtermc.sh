#!/bin/bash

# Foreground 
# Higher value = lighter color
n=160
n1=$(( 256 - $n ))
fg=$( printf "#%x%x%x\n" $(( $RANDOM % $n1 + $n )) \
                                $(( $RANDOM % $n1 + $n )) \
                                $(( $RANDOM % $n1 + $n )) )

# Background 
# Low value = darker color
m=48
bg=$( printf "#%x%x%x\n" $(( $RANDOM % $m + 16 )) \
                                $(( $RANDOM % $m + 16 )) \
                                $(( $RANDOM % $m + 16 )) )

# summon xterm
# xterm -fn fixed -fg "$fg" -bg Gray12 &
xterm -fn fixed -fg "$fg" -bg "$bg" &
