#!/bin/bash

# Pick a random mac voice out of the list below, and then pick a random action to say.
voices=(
    Alex                    
    Bells                   
    Bruce                  
    Cellos                 
    Daniel              
    Fiona               
    Karen               
    Kathy               
    Moira               
    Tessa               
    Veena               
    Vicki                 
    Victoria               
)

# pick a random action. TODO: randomize the yoga poses.
actions=(
    "You should stand up at your desk"
    "You should do 5 push ups"
    "You should do 2 pull ups"
    "Do a sun salutation."
    "Why don't you do a headstand?"
    "Do 20 crunches"
)

time=$(date "+%H:%M:%S")
hour=$(date "+%H")
if [ $hour -ge "9" ] && [ $hour -le "18" ]
    then
    say -v ${voices[$(( RANDOM % 15 ))]} "The time is now $time. ${actions[$(( RANDOM % 6 ))]}"
fi
