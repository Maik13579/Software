

nmap(){
	if [[ $(docker images) == *"nmap"* ]]; then
		docker run --rm -it nmap "$@"
	else # build container from Dockerfile
		docker build -t nmap $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/.
		docker run --rm -it nmap "$@"
	fi
}
