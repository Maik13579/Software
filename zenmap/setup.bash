REPO_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $REPO_DIR


zenmap(){
	if [[ $(docker images) == *"zenmap"* ]]; then
		docker run -d \
		--rm \
		--name zenmap \
		-e DISPLAY \
		-e XAUTHORITY='/xauthority' \
		-v $REPO_DIR/zenmap:/home/zenmap \
		-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
		-v ${XAUTHORITY}:/xauthority:ro \
		zenmap

	else # build container from Dockerfile
		docker build -t zenmap $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/.
		docker run -d \
		--rm \
		--name zenmap \
		-e DISPLAY \
		-e XAUTHORITY='/xauthority' \
		-v $REPO_DIR/zenmap:/home/zenmap \
		-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
		-v ${XAUTHORITY}:/xauthority:ro \
		zenmap
	fi
}
