

hping(){
	if [[ $(docker images) == *"hping"* ]]; then
		docker run --rm -it hping "$@"
	else # build container from Dockerfile
		docker build -t hping $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/.
		docker run --rm -it hping "$@"
	fi
}
