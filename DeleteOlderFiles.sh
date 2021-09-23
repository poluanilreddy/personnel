#!/bin/sh

#  DeleteOlderFiles.sh
#  
#
#  Created by Shruti Mittal on 11/06/21.
#

### Sample Comands ######
####### find Files #######
# find /path -type f -mtime +30

## mtime is modified time
## ctime is created Times

####### Delete Files #######
# find /path -type f -mtime +30 -delete

###### Find Folder ########
# find /path -type d -ctime +30

###### delete Folder ########
# find /path -type d -ctime +30 -exec rm -rf {} \

###### find files for Particular extension ########
# find /path -name "*.log" -type f -mtime +30

###### delete files for Particular extension ########
# find /path -name "*.log" -type f -mtime +30 -delete



####### Delete Old ipa Files #######
###### there are multiple ipa files inside each folder #########

find /Users/Shared/Jenkins/workspace/IOS_APP_PROD/build/Release-iphoneos/Build/Apps -type f -mtime +30 -delete

find /Users/Shared/Jenkins/workspace/IOS_Speciality_App_QA/build/Release-iphoneos/Build/Apps -type f -mtime +30 -delete

find /Users/Shared/Jenkins/workspace/QA-iOS-Speciality-App/build/Release-iphoneos/Build/Apps -type f -mtime +30 -delete



##### Delete Old Folders ######
###### for each build a different folder is created #######
find /Library/WebServer/Documents/IOSAPP -type d -ctime +30 -exec rm -rf {} \

find /Users/Xcloud/Library/Developer/Xcode/Archives -type d -ctime +30 -exec rm -rf {} \
