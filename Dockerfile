FROM haffmans/mingw-qt5

RUN pacman -S --noconfirm --noprogressbar \
    mingw-w64-qt5-serialport \
    mingw-w64-postgresql \
    curl \
    zip \
    openssh \
    && (echo -e "y\ny\n" | pacman -Scc)
    
    
    
    
ONBUILD USER root
ONBUILD WORKDIR /

USER devel
ENV HOME=/home/devel
WORKDIR /home/devel
