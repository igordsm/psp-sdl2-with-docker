# Simple example to compile PSP apps using SDL2

This uses docker to automate the setup of [pspdev toolchain](https://pspdev.github.io/). A prebuilt version of the image exists at `igormontagner/pspdev:latest`, but it can also be ran locally with the following commands. 

```
docker build -t psp:local .
docker run -it --rm -v $PWD:/src/ psp:local
```

This drops into a terminal inside the container. Run 

```
mkdir build && cd build
psp-cmake ..
make
```

to create the `EBOOT.PBP` file. TO run this on a PSP copy it to a folder inside `/GAME`.

