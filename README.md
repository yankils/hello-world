## DevOps Project for Beginners   
On Master Branch by bharath
On Test Branch
[![Image](https://github.com/yankils/Simple-DevOps-Project/blob/master/Devops_course.PNG "DevOps Project - CI/CD with Jenkins Ansible Docker Kubernetes ")](https://www.udemy.com/course/valaxy-devops/?referralCode=8147A5CF4C8C7D9E253F)


# Design Decisions:
1. Created the Data center(My_Data_Center).
2. Created 2 LAN's ( Public_LAN & Private_LAN)
3. Created FrontEnd_Server in My_Data_Center with following specifications
    1. 2 GB RAM
    2. 1 Core
    3. 25GB HDD Storage with SSH key and Image(debian-12-genericcloud-amd64-daily-20220614-1046)
    4. 2 NIC's (1 NIC to connect with BackEnd_Server through Private_LAN and 1 NIC to connect to internet through Public_LAN)
4. Created BackEnd_Server in My_Data_Center with following specifications
    1. 2 GB RAM
    2. 2 Core
    3. 25GB HDD Storage with SSH key and Image(debian-12-genericcloud-amd64-daily-20220614-1046)
    4. 1 NIC's (1 NIC to connect with FrontEnd_Server through Private_LAN)  
  
