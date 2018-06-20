#### Add this in ~/.bash_profile
> To refresh use:
```bash
source ~/.bash_profile
```

> Put in end of file.
```bash
go() {
	echo $@
	case ${1,,} in
	projects) 	cd /home/projetos 
				if [[ ! -z $2 ]]; then
				cd ${2,,}
				fi
	;;
	dev) 		cd /home/docker/projetos 
				if [[ ! -z $2 ]]; then
				cd ${2,,}
				fi
	;;
	compose) 	cd /home/projetos/compose/
				if [[ ! -z $2 ]]; then
				cd ${2,,}
				fi
				if [[ ! -z $3 ]]; then
					case ${3,,} in
					up) docker-compose up -d ;;
					start) docker-compose start ;;
					stop) docker-compose stop ;;
					remove) docker-compose down ;;
					*) echo "Just (up|start|stop|remove)" ;;
					esac
				fi
	;;
	*) echo "Just (projects|dev|compose)" ;;
	esac
}
```
