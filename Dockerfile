FROM phusion/baseimage:latest
MAINTAINER Ferenc Kálmán <fkalman@index.hu>

# Update repo
RUN apt-get update

# Install zshell
RUN apt-get -yq install zsh git

# Create user
RUN useradd -m -g sudo -s /bin/zsh enpassant

#RUN apt-get install -yq openssh-server
#RUN mkdir /var/run/sshd

# Install vim
RUN apt-get -yq install vim curl

#RUN echo "temp123\ntemp123" | passwd enpassant

EXPOSE 22

USER enpassant

WORKDIR /home/enpassant

# Install Powerline
RUN mkdir tools
RUN git clone https://www.github.com/lokaltog/powerline.git tools/powerline

# Create github directory
RUN mkdir -p code/github_code

# Create .zshrc.include file to prepare for manually installed tools
RUN echo "export PATH=/home/enpassant/install/bin:$PATH\nexport LD_LIBRARY_PATH=/home/enpassant/lib:$LD_LIBRARY_PATH\n" > /home/enpassant/.zshrc.include

WORKDIR code/github_code

RUN for repo in `curl https://api.github.com/users/enpassant/repos  | grep clone_url | awk -F " " '{print $2}' | sed "s/\"//g" | sed "s/,//g"`; do git clone $repo; done

WORKDIR /home/enpassant

RUN ln -s code/github_code/config/.vim
RUN ln -s code/github_code/config/.vimrc
RUN ln -s code/github_code/config/.zshrc

RUN mkdir .vim/bundle
RUN git clone https://github.com/gmarik/Vundle.vim.git /home/enpassant/.vim/bundle/Vundle.vim

RUN echo "To set up your vim environment, run the command :PluginInstall after launching vim." >> README

USER root
CMD    ["/usr/sbin/sshd", "-D"]
