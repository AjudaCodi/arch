#!/bin/sh

ComprovarBateria ()
{
var=`acpi | grep "Discharging" -o`
if [ "$var" == "Discharging" ]
then
	echo ✗
else
	echo ✓
fi
}

mybatery ()
{
	echo "`acpi | grep [0-9]+% -E -o``ComprovarBateria`"
}

mydate()
{
	echo `date | grep -E [0-9]{2}:.. -o`
}

myUpdates ()
{
	echo `checkupdates | wc -l`
}

while xsetroot -name "⌚`mydate`│⏚`mybatery`│⇓`myUpdates`"
do
	sleep 100
done
