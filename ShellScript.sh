

echo "Enter username"
read username
echo "Enter the repository name"
read repo
#start chrome https://github.com/"$username"/"$repo"
#url="https://"$username":"$password"@github.com/"$username"/"$repo""
url="https://github.com/"$username"/"$repo""
echo "Enter the foldername for copying the project from github to D directory"
read foldername
mkdir $foldername
path="D:/${foldername}"
git clone $url $path
echo "Copied the file from github to D directory"
echo "Enter the Project Name"
read oldproject
echo "Enter the new project name"
read newproject
space=" "
newproject=${newproject//-/${space}}
newproject="$(echo "${newproject}" | perl -pe 's/\S+/\u$&/g')"
newproject=${newproject//${space}}
cd $path
mkdir ./$newproject

for entry in "$path"/*
do
  echo $entry
  fname=`basename $entry`
  
  if [ $fname = "project-template" ]
  then
     cp -r $oldproject/* $newproject/  
  fi
done 
echo "File has been transferred from $oldproject to $newproject"

f1="D:${foldername}/"
f2="${newproject}"
f3="\config\pipeline\views"
filepath=$f1$f2$f3
cd ${filepath}
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


f4="${newproject}\config"
filepath=$f1$f4
cd ${filepath}
ls
for entry in "$filepath"/*
do
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
  sed -i 's/<project_name>/'${newproject}'/g' $entry
  sed -i 's/<project_name_camelcase>/'${newproject}'/g' $entry
  variable=${newproject//[^[:alnum:]]/}
  sed -i 's/<project_name_wo_special_characters>/'${variable}'/g' $entry
  fi
done

filepath="D:/${foldername}/${newproject}"
echo $filepath
cd ${filepath}
for entry in "$filepath"/*
do
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

