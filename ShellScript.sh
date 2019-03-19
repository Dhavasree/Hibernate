dir=$(pwd)
echo $dir
username=$(whoami)
echo $username
#echo "Enter git username"
#read username
echo "Enter the repository name"
read repo
#start chrome https://github.com/"$username"/"$repo"
#url="https://"$username":"$password"@github.com/"$username"/"$repo""
url="https://github.com/"$username"/"$repo""
echo $url
echo "Enter the foldername for copying the project from github to D directory"
read foldername
mkdir $foldername
path="$dir/${foldername}"
echo $path
git clone $url $path
echo "Copied the file from github to D directory"
 oldproject="project-template"
echo "Enter the Destination project name"
read newproject
space=" "
newproject1=${newproject//-/${space}}
newproject1="$(echo "${newproject1}" | perl -pe 's/\S+/\u$&/g')"
newproject1=${newproject1//${space}}
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

filepath="$path/${newproject}/config/pipeline/views"
cd ${filepath}
for entry in "$filepath"/*
do
  echo $entry
done 
fname=`basename $entry`
echo $fname
mv "$fname" "${fname//project_name_camel_case/"${newproject1}"}"
for entry in "$filepath"/*
do
  echo $entry
  sed -i 's/<project_name_camelcase>/'${newproject1}'/g' $entry
done 



filepath="$path/${newproject}/config"
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
  sed -i 's/<project_name_camelcase>/'${newproject1}'/g' $entry
  variable=${newproject1//[^[:alnum:]]/}
  sed -i 's/<project_name_wo_special_characters>/'${variable}'/g' $entry
  fi
done

filepath="$path/${newproject}"
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
  sed -i 's/projectTemplate/'${newproject1}'/g' $entry
  fi
done 

git rm -r --cached .
git add "$filepath"
git commit -m "newcommit"
git remote set-url origin https://github.com/"$username"/"$repo"
git push -u origin master
echo "File has been saved in git"
