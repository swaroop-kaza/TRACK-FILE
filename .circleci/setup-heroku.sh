 #!/bin/bash
set -eu

 git remote add heroku https://git.heroku.com/$HEROKU_APP_NAME.git
 wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
 sudo mkdir -p /usr/local/lib /usr/local/bin
 sudo tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib
 sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

 cat > ~/.netrc << EOF

 machine api.heroku.com
   login kazasrisaiswaroop@gmail.com
   password 381e1a36-1d75-4597-919a-b717a57c24d9
 machine git.heroku.com
   login kazasrisaiswaroop@gmail.com
   password 381e1a36-1d75-4597-919a-b717a57c24d9
 EOF

 sudo chmod 600 ~/.netrc 

 ssh-keyscan -H heroku.com >> ~/.ssh/known_hosts
