#!/bin/bash
#java -jar tools/PlayGame.jar maps/map7.txt 1000 1000 log.txt "java -jar example_bots/RandomBot.jar" "java -jar example_bots/DualBot.jar" | java -jar tools/ShowGame.jar

for bot in RandomBot BullyBot DualBot ExpandBot ProspectorBot RageBot
do
	wins=`grep 1 $bot.txt | wc -l`
	echo "Against $bot : $wins"
#	java -jar tools/PlayGame.jar maps/map$i.txt 1000 1000 log.txt "java MyBot" "java -jar example_bots/$bot.jar" 2>&1 | grep Wins >>$bot.txt
done

