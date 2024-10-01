# FROM althack/ros2:iron-dev 

# # Add the moveit nightly packages
# # RUN echo "deb [trusted=yes] https://raw.githubusercontent.com/moveit/moveit2_packages/jammy-${ROS_DISTRO}/ ./" | sudo tee /etc/apt/sources.list.d/moveit_moveit2_packages.list
# # RUN echo "yaml https://raw.githubusercontent.com/moveit/moveit2_packages/jammy-${ROS_DISTRO}/local.yaml ${ROS_DISTRO}" | sudo tee /etc/ros/rosdep/sources.list.d/1-moveit_moveit2_packages.list
    
# # Install and build libfranka
# # apt-get clean && rm -rf /var/lib/apt/lists/* &&
# # RUN apt-get update \
# #    && apt-get install -y libpoco-dev libeigen3-dev \
# #    && git clone https://github.com/frankaemika/libfranka.git --recursive -b 0.9.0 \
# #    && cd libfranka \
# #    && mkdir build && cd build \
# #    && cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF  .. \
# #    && cmake --build . -j$(nproc) \
# #    && cpack -G DEB \
# #    && sudo dpkg -i libfranka-*.deb
   
# # Install required ROS packages
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get update \
#    && apt-get -y install --no-install-recommends python3-tk \
#    ros-${ROS_DISTRO}-rviz2 \
#    ros-${ROS_DISTRO}-control-toolbox \
#    ros-${ROS_DISTRO}-cv-bridge \
#    ros-${ROS_DISTRO}-moveit-py \
#    ros-${ROS_DISTRO}-moveit-configs-utils \
#    ros-${ROS_DISTRO}-moveit-planners \
#    ros-${ROS_DISTRO}-moveit-setup-assistant \
#    ros-${ROS_DISTRO}-moveit-servo \
#    ros-${ROS_DISTRO}-moveit-simple-controller-manager \
#    ros-${ROS_DISTRO}-moveit-resources-panda-moveit-config \
#    ros-${ROS_DISTRO}-ros2-control \
#    ros-${ROS_DISTRO}-joint-state-broadcaster \
#    ros-${ROS_DISTRO}-joint-state-publisher \
#    ros-${ROS_DISTRO}-joint-trajectory-controller \
#    ros-${ROS_DISTRO}-realsense2-camera \
#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    # && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

# # Install required python modules
# RUN pip install numpy==1.26.4 opencv-python pyassimp scipy transitions setuptools==58.2.0 pymodbus ipykernel icecream \
#    typing_extensions==4.4.0 FreeSimpleGUI roboticstoolbox-python torch torchvision timm scikit-learn


# # Install handybot 
# RUN apt-get update \
# && git clone https://github.com/ycheng517/tabletop-handybot.git \
# && git clone https://github.com/ycheng517/pymoveit2.git \
# # && git clone https://github.com/ycheng517/ar4_ros_driver.git \
# && git clone https://github.com/IDEA-Research/Grounded-Segment-Anything \
# && git clone https://github.com/ycheng517/easy_handeye2.git \
# && git clone https://github.com/JMU-ROBOTICS-VIVA/ros2_aruco.git
# # && pip install -r requiremetns.txt

# # Install required python modules
# # RUN pip install pip3 install torch torchvision

# # Set up auto-source of workspace for ros user
# ARG WORKSPACE
# RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /root/.bashrc

# # # Copy .bash_aliases into the container
# # COPY .bash_aliases /root/.bash_aliases

##################################################################
# Old Stuff Above
##################################################################

# I think I know what to do now!!!!

# following the approach of Alison Thackston https://github.com/athackst/dockerfiles/blob/main/ros2/iron.Dockerfile

# I can user her image as the base image

# clone the handybot code
# build that image

# make a new image
# git clone the grounded-seg-anything
# build that image

# then hopefully everything should be in the same place and working..?




# FROM gsa

# WORKDIR /gsa
# COPY . .

# RUN go build 

# FROM althack/ros2:iron-dev AS ros_env

# # ** [Optional] Uncomment this section to install additional packages. **
# #
# # ENV DEBIAN_FRONTEND=noninteractive
# # RUN apt-get update \
# #    && apt-get -y install --no-install-recommends <your-package-list-here> \
# #    #
# #    # Clean up
# #    && apt-get autoremove -y \
# #    && apt-get clean -y \
# #    && rm -rf /var/lib/apt/lists/*
# # ENV DEBIAN_FRONTEND=dialog

# # Set up auto-source of workspace for ros user
# ARG WORKSPACE
# RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc

###################################################
# Stage 1: Build Stage
# Using Allison Thackston's ROS Iron base image
###################################################
FROM althack/ros2:iron-dev AS builder

# Set environment variables
# ENV DEBIAN_FRONTEND=noninteractive
# ARG WORKSPACE
# USER ros
# WORKDIR /home/ros/workspace_new
# RUN chown -R ros:ros /home/ros/workspace_new
# WORKDIR /workspaces/mtc_panda_NaLaPRo
# RUN mkdir temp
# RUN mkdir -p /workspaces/mtc_panda_NaLaPRo/temp
# # RUN touch test_file_2.txt
# RUN echo "hello" >> /workspaces/mtc_panda_NaLaPRo/temp/test_file_2.txt
# RUN cat /workspaces/mtc_panda_NaLaPRo/temp/test_file_2.txt
# COPY /tmp/mtc_panda_NaLaPRo/test_file_2.txt /workspaces/mtc_panda_NaLaPRo/temp/test_file_2.txt
# /workspaces/mtc_panda_NaLaPRo/temp
# RUN touch /workspaces/mtc_panda_NaLaPRo/temp/test_file_2.txt
# WORKDIR /home/ros/workspaces_new
# RUN pwd
# RUN mkdir /home/HELLO
# WORKDIR /HELLO
# RUN mkdir /random
# WORKDIR /home/ros/workspaces/src/random
# Set up Handybot repo 
# WORKDIR /src
# RUN chown -R ros:ros /home/ros/workspaces/temp
# WORKDIR /workspaces/mtc_panda_NaLaPRo/src
RUN git clone https://github.com/ycheng517/tabletop-handybot.git /workspaces/mtc_panda_NaLaPRo/src

###################################################
# set up tabletop-handybot.repos
###################################################
# FROM builder AS base

# ARG WORKSPACE
# WORKDIR /src
# RUN git clone https://github.com/ycheng517/pymoveit2.git
# RUN git clone https://github.com/ycheng517/ar4_ros_driver.git
# RUN git clone https://github.com/ycheng517/easy_handeye2.git
# RUN git clone https://github.com/JMU-ROBOTICS-VIVA/ros2_aruco.git

# Install system dependencies required by ROS and Grounded-Segment-Anything
# RUN apt-get update && apt-get install -y \
#     git \
#     python3-pip \
#     libopencv-dev \
#     build-essential \
#     cmake \
#     curl \
#     && rm -rf /var/lib/apt/lists/*

# # Install Python dependencies for Grounded-Segment-Anything
# RUN pip3 install --upgrade pip \
#     && pip3 install torch torchvision torchaudio \
#     && pip3 install opencv-python-headless \
#     && pip3 install transformers \
#     && pip3 install matplotlib \
#     && pip3 install tqdm

# # Clone the Grounded-Segment-Anything repository
# # WORKDIR /root
# RUN git clone https://github.com/IDEA-Research/Grounded-Segment-Anything.git

# # Navigate to the Grounded-Segment-Anything folder
# WORKDIR /src/Grounded-Segment-Anything

# # Install dependencies using the provided Dockerfile structure
# RUN pip3 install -r GroundingDINO/requirements.txt
# # RUN pip3 install -r segment_anything/requirements.txt
# RUN pip3 install -e GroundingDINO
# RUN pip3 install git+https://github.com/facebookresearch/segment-anything.git

# ###################################################
# # Stage 2: Runtime Stage
# # Using ROS Noetic as the base image for the runtime environment
# ###################################################
# FROM base AS final

# # Set the working directory
# WORKDIR /src/Grounded-Segment-Anything

# # # Copy the built artifacts from the builder stage
# # COPY --from=builder /root/Grounded-Segment-Anything /root/Grounded-Segment-Anything

# # Install runtime dependencies (minimal set)
# RUN apt-get update && apt-get install -y \
#     python3-pip \
#     libopencv-dev \
#     && rm -rf /var/lib/apt/lists/*

# # Install Python runtime dependencies
# RUN pip3 install --upgrade pip \
#     && pip3 install torch torchvision torchaudio \
#     && pip3 install opencv-python-headless \
#     && pip3 install transformers \
#     && pip3 install matplotlib \
#     && pip3 install tqdm

# # Set the entry point for ROS environment and running the tool
# CMD ["bash"]