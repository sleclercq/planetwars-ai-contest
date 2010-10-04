#!/bin/bash

#clear logs
for bot in BullyBot DualBot ExpandBot ProspectorBot RageBot
do
	rm -f $bot.txt
done

for bot in BullyBot DualBot ExpandBot ProspectorBot RageBot
do
#	for i in {1..100}
#	do
#		echo Game $i against $bot
		echo Playing against $bot
#		java -jar tools/PlayGame2.jar maps/osef.txt 1000 1000 log.txt "java MyBot" "java -jar example_bots/$bot.jar"
		java -jar tools/PlayGame2.jar maps/osef.txt 1000 1000 log.txt "java MyBot" "java -jar example_bots/$bot.jar" 2>&1 | grep Wins >>$bot.txt
#		java -jar tools/PlayGame.jar maps/map$i.txt 1000 1000 log.txt "java MyBot" "java -jar example_bots/$bot.jar" 2>&1 | grep Wins >>$bot.txt
#	done
done

#save scores
echo `date` >>results.txt
for bot in BullyBot DualBot ExpandBot ProspectorBot RageBot
do
        wins=`grep 1 $bot.txt | wc -l`
        echo "Against $bot : $wins" >>results.txt
done

