echo "Enter the Import Project Name"
read oldproject
echo "Create New Project Name"
read newproject
space=" "
newproject=${newproject//-/${space}}
newproject="$(echo "${newproject}" | perl -pe 's/\S+/\u$&/g')"
newproject=${newproject//${space}}
echo "Import Project :$oldproject"
echo "New Project : ${newproject}" 
mkdir ./$newproject
cp -r $oldproject/* $newproject/  
echo "File had been transferred"

filepath="D:${newproject}\config\pipeline\views"
cd ${filepath}
ls
for entry in "$filepath"/*
do
  echo $entry
done 
fname=`basename $entry`
echo $fname
mv "$fname" "${fname//project_name_camel_case/"${newproject}"}"
for entry in "$filepath"/*
do
  echo $entry
  sed -i 's/<project_name_camelcase>/'${newproject}'/g' $entry
done 

filepath="D:${newproject}\config"
cd ${filepath}
ls

for entry in "$filepath"/*
do
  echo $entry
  fname=`basename $entry`
  if [ $fname = "pipeline_igniteacc.groovy" ]
  then
     mv "$fname" "${fname//pipeline_igniteacc/pipeline}"
   fi
done 

for entry in "$filepath"/*
do
  echo $entry
  fname=`basename $entry`
  if [ $fname = "pipeline.groovy" ]
  then
  echo "$entry"
  sed -i 's/<project_name>/'${newproject}'/g' $entry
  sed -i 's/<project_name_camelcase>/'${newproject}'/g' $entry
  variable=${newproject//[^[:alnum:]]/}
  sed -i 's/<project_name_wo_special_characters>/'${variable}'/g' $entry
  fi
done

filepath="D:/${newproject}"
cd ${filepath}
for entry in "$filepath"/*
do
  echo $entry
  fname=`basename $entry`
  if [ $fname = "README.md" ]
  then
  sed -i 's/'$oldproject'/'${newproject}'/g' $entry
  fi
   if [ $fname = "serverless.yaml" ]
  then
  sed -i 's/'$oldproject'/'${newproject}'/g' $entry
  sed -i 's/gfb-data/'${newproject}'/g' $entry
  sed -i 's/projectTemplate/'${newproject}'/g' $entry
  fi
done 

