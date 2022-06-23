# EmbeddedJourney
This is my Embedded systems Digital Design Journey. 

After taking machine learning classes, and learning software engineering, I've realized that my heart was always in hardware. 
Though hardware will always have pieces of ML/SWE, it is a different skillset that bridges the real world and the Meta. 

In here I will be creating small RTL pieces as practice and small test benches to test what I've made.
The RTL problems will be given to me by my mentors with relationships that I've developed with them at my 6 year and continuing tenure at Intel Corporation.

Here I'll be using Icarus Verilog to compile my modules, and use cocotb for my verification platform. 

Hardware Used:
m1 13" macbook pro

Tools used:
utilities:
brew install coreutils

icarus:
brew install bison

echo 'export PATH="/usr/local/opt/bison/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/opt/homebrew/opt/bison/bin:$PATH"' >> ~/.zshrc

git config --global user.name "dkim1235"
git config --global user.email dkim1235@gmail.com

git clone https://github.com/steveicarus/iverilog.git
git checkout --track -b v11-branch origin/v11-branch

git clone git://git.sv.gnu.org/autoconf
brew install temurin


