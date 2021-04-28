#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>

#include "ros/ros.h"
#include "std_msgs/String.h"
// #include "std_msgs/Int16.h"
#include "std_msgs/Int8.h"

#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Float32MultiArray.h"

void chatterCallback(const std_msgs::Float32MultiArray::ConstPtr &msg)
{
    // ROS_INFO("I heard: [%s]", msg->data.c_str());

    // ROS_INFO("%d", msg->data);

    // std::vector<Float>::const_iterator tampung_sementara;
    // tampung_sementara = msg->data.end();
    // tampung_sementara + 1 = msg->data.end();

    float hasil[5], hasil_akhir = 0;
    // hasil[1] = msg->data.at(1);
    // for (Float i = 0; i < 4; i++)
    // {
    //     hasil[i] = msg->data.at(i);
    // }
    hasil_akhir = msg->data.at(0) * msg->data.at(1) - msg->data.at(2) + msg->data.at(3) / msg->data.at(4);

    // ROS_INFO("%d + %d - %d + %d = ??", hasil[0], hasil[1], hasil[2], hasil[3]);
    ROS_INFO("%.02f * %.02f - %.02f + %.02f / %.02f = %.02f", msg->data.at(0), msg->data.at(1), msg->data.at(2), msg->data.at(3), msg->data.at(4), hasil_akhir);
}
int main(int argc, char **argv)
{
    ros::init(argc, argv, "KangHitung");
    ros::NodeHandle handler;
    ros::Subscriber sub = handler.subscribe("oprasi", 1000, chatterCallback);
    ros::Rate loop_rate(10);

    ros::spin();

    return 0;
}
