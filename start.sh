echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/LoopXS/sybintest /VCPlayerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/LoopXS/sybintest -b $BRANCH /VCPlayerBot
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
