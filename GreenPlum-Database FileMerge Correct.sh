# Grouping together all the files based on the source type like 2G Postpaid, Prepaid etc and moving them together to corresponding flder in the local
# Change the name to group to together file type and move them t the corresponding folder
# First part is the default location of all the files(probably no need to change as all files will be in this location), Second part contains the path to which files need to copied(create new folders for new file type like 2G Prepaid)
  
find /home/gpadmin/HDFS-STARTHUB-DATA/LOC/ -name "LOC2G.postpaid*.txt" -exec cp -i {} -t /home/gpadmin/HDFS-STARTHUB-DATA/LOC/2GPostPaid  \;

#Copying the grouped together file to HDFS (first part of the scripit conatins thhe location of the grouped files in Local and second part the path to which the files need to copied in HDFS)
# If a new file path is required create it using "hadoof fs -mkdir -p /PathHDFS"
hadoop fs -mkdir -p /greenplumdb/StarHub/PostPaid2G


hadoop fs -copyFromLocal /home/gpadmin/HDFS-STARTHUB-DATA/LOC/2GPostPaid/*  /greenplumdb/StarHub/PostPaid2G

sudo rm -r /home/gpadmin/HDFS-STARTHUB-DATA/LOC/2GPostPaid/*


# Merging the copied file in HDFS and passing the o/p to local, specify the file location of the files to combine all the files(In HDFS) and specify the target o/p (In local) 
hadoop fs -getmerge /greenplumdb/StarHub/PostPaid2G/* /home/gpadmin/HDFS-STARTHUB-DATA/LOC/Combine/CombinedFilesPostPaid2G.txt

hadoop fs -rm -r /greenplumdb/StarHub/PostPaid2G/2GPostPaid

# Move the final o/p after the merge to hdfs using


hadoop fs -copyFromLocal /greenplumdb/StarHub/PostPaid2G/2GPostPaid/CombinedFilesPostPaid2G.txt /home/gpadmin/STARTHUB/PostPaid2G

sudo rm -r /greenplumdb/StarHub/PostPaid2G/2GPostPaid/CombinedFilesPostPaid2G.txt

# Syntax for creating External Table
# Type psql from the terminal no need to spcify Starhub we will be creating it in the default database
# Execute folowing comand to create external table, change the last location path to the corresponding location to file in HDFS
# PostPaid (Synatx for postpaid type is same)
CREATE EXTERNAL TABLE Loc2G_PostPaid ( Timestamp  text, Unique_ID text, Anonymised_IMSI  text,
Lat  text, Long  text, Accuracy  text, Voice  text,SMS  text,Data  text,Network_Event text ,
IsIndoor text,EndTimestamp text)
LOCATION (‘gphdfs://11.0.0.20:8020/home/gpadmin/HDFS-STARTHUB-DATA/PostPaid2G/CombinedFilesPostPaid2G.txt’)
FORMAT ‘text’ (delimiter ‘|’) ENCODING ‘UTF8’; 


CREATE EXTERNAL TABLE Loc3G_PostPaid ( Timestamp  text, Unique_ID text, Anonymised_IMSI  text,
Lat  text, Long  text, Accuracy  text, Voice  text,SMS  text,Data  text,Network_Event text ,
IsIndoor text,EndTimestamp text)
LOCATION (‘gphdfs://11.0.0.20:8020/home/gpadmin/HDFS-STARTHUB-DATA/PostPaid3G/CombinedFilesPostPaid3G.txt’)
FORMAT ‘text’ (delimiter ‘|’) ENCODING ‘UTF8’; 

# PrePaid (Synatx for prepaid type is same)
CREATE EXTERNAL TABLE Loc2G_PrePaid ( Timestamp  text, Nationality text, Anonymised_IMSI  text, Lat  text, Long  text, Accuracy  text, Voice  text,SMS  text,Data  text,Network_Event text ,IsIndoor text,EndTimestamp text)
LOCATION (‘gphdfs://11.0.0.20:8020/Starhub/Final/PrePaid2G/PretOut2G.txt’)
FORMAT ‘text’ (delimiter ‘|’) ENCODING ‘UTF8’; 

# Roamers (Synatx for Roamers type is same)
CREATE EXTERNAL TABLE Loc2G_Roamers ( Timestamp  text, Country text, Anonymised_IMSI  text, Lat  text, Long  text, Accuracy  text, Voice  text,SMS  text,Data  text,Network_Event text ,IsIndoor text,EndTimestamp text)
LOCATION (‘gphdfs://11.0.0.20:8020/Starhub/Final/Roamers2G/Roamers2G.txt’)
FORMAT ‘text’ (delimiter ‘|’) ENCODING ‘UTF8’; 

# Syntax for CRM  PostPay
CREATE EXTERNAL TABLE  CRM_PostPay (datetime text, Unique_ID text, Age_Band   text, Gender   text, Race   text, Postal_Code  text, Anonymised_IMSI  text);
LOCATION (‘gphdfs://11.0.0.20:8020/Starhub/Final/CRMPostPaid/CRMPostPay.txt’)
FORMAT ‘text’ (delimiter ‘|’) ENCODING ‘UTF8’; 

# Syntax for CRM  PrePay
CREATE EXTERNAL TABLE CRM_PrePay (datetime text, Anonymised_IMSI text, Age_Band   text, Nationality   text);
LOCATION (‘gphdfs://11.0.0.20:8020/Starhub/Final/CRMPrePaid/CRMPrePay.txt’)
FORMAT ‘text’ (delimiter ‘|’) ENCODING ‘UTF8’; 

