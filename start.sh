if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jnanesh1234/uniauto  /uniauto 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /uniauto 
fi
cd /uniauto 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
