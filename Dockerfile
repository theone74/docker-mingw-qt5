FROM haffmans/mingw-qt5

RUN pacman -S --noconfirm --noprogressbar \
    mingw-w64-qt5-serialport \
    curl \
    && (echo -e "y\ny\n" | pacman -Scc)
    
    
    
    
ONBUILD USER root
ONBUILD WORKDIR /

USER devel
ENV HOME=/home/devel
WORKDIR /home/devel
