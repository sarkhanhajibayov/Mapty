echo "Enter directory name"
read dirname

if [ ! -d "$dirname" ]
then
    echo "File doesn't exist. Creating now"
    mkdir ./$dirname
    echo "File created"
else
    echo "File exists"
fi

echo "Enter text file name"
read txtname
{
  echo 'First line.'
  echo 'Second line.'
  echo 'Third line.'
} >$txtname.txt

git add .

echo "Enter commit name"
read comname 

git commit -m $comname
git push origin main



