alias humble=". /opt/ros/humble/setup.bash && echo 'ROS2 Humble sourced'"
alias nuc="ssh local@172.20.9.165 -X"
alias nuc_moveit='ssh local@172.20.9.165 -t "cd ~/Documents/ROS/panda_control_humble/.devcontainer && /bin/bash -c \"docker compose up moveit\" "'
alias nuc_gravity_comp='ssh local@172.20.9.165 -t "cd ~/Documents/ROS/panda_control_humble/.devcontainer && /bin/bash -c \"docker compose up gravity_comp\" "'
