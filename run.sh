#!/bin/bash



PS3="Please select which mode to run ORBSLAM3:"
select var in "Monocular" "Monocular-Inertial" ;do
  if [ "$var" == "Monocular" ];then echo "Run ORBSLAM3 In Monocular Mode" 
  	rosrun loop main /home/ludi/catkin_ws/src/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/ludi/catkin_ws/src/ORB_SLAM3/Settings/monocular.yaml	
  	break;
  elif [ "$var" == "Monocular-Inertial" ] ;then echo "Run ORBSLAM3 In Monocular-Inertial Mode" 
  	rosrun ORB_SLAM3 Mono_Inertial /home/ludi/catkin_ws/src/ORB_SLAM3/Vocabulary/ORBvoc.txt /home/ludi/catkin_ws/src/ORB_SLAM3/Settings/monocular-inertial.yaml
  	break;
  else
  	echo "try again"
  	break;	  	
  fi  
done


