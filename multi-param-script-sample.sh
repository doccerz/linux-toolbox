#!/usr/bin/bash
# Parameters:
# -p = set DB password
# -s = set DB schema
logdir=/usr/local/datamigration/logs
logname=set-db-param_`date +'%Y-%m-%d'`

while [ ! -z "$1" ]; do
    case $1 in
        -s)
            if [ ! -z "$2" ]; then
                echo [`date +'%Y-%m-%d %H:%M:%S'`] schema set by "$USER" | tee -a $logdir/$logname.log
				sed -i "s/^[#]*\s*schema=.*/schema="$2"/" config.txt
				shift
			fi
            ;;
        -p)
            if [ ! -z "$2" ]; then
                echo [`date +'%Y-%m-%d %H:%M:%S'`] password set by "$USER" | tee -a $logdir/$logname.log
				sed -i "s/^[#]*\s*passkey=.*/passkey="$2"/" config.txt
				shift
			fi
            ;;
        *)
            break
            ;;
    esac
	
	shift
done