
# Install linter requirements
sudo pip install pylint
sudo npm install -g jshint

# Pathogen install
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle && \
    git clone https://github.com/scrooloose/syntastic.git
