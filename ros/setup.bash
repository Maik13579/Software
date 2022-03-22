
export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_HOSTNAME=127.0.0.1
export ROS_IP=127.0.0.1

ros(){
	docker run -it --rm --net=host -e ROS_MASTER_URI -e ROS_IP -e ROS_HOSTNAME ros:noetic bash
}
roscore(){
    	docker run -it --name roscore --rm --net=host -e ROS_MASTER_URI -e ROS_IP -e ROS_HOSTNAME ros:noetic-ros-core roscore
}

