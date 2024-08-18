# Scrolling Spectrogram using OpenGL in C++

This is an adaptation of
Anthony Agnone's [Audio Visualization with OpenGL in C++](https://github.com/aagnone3/audio_visualization)
which is itself a rework of a real-time spectrogram based upon OpenGL, GLUT, and PortAudio.
Original project: [Real-time OpenGL spectrogram by Alex Barnett](https://math.dartmouth.edu/~ahb/software/#glspect)

The version created here is for a standalone raspberry pi 4 application that runs on top of Fedora 40 with pipewire audio. Various original features have been commented out. The real-time spectrum analyzer is being used for a continuous display of breath sounds.

# Dependencies

- \*nix operating system with
- libraries
  - portaudio
  - fftw
  - opengl etc

```bash
sudo apt install -y
    cmake \
    libasound2-dev \
    portaudio19-dev \
    libfftw3-dev \
    libglu1-mesa-dev \
    freeglut3-dev \
    mesa-common-dev
```

# Building

```bash
make build

# run with the following
build/opengl_spectrogram
```

# Installing
```bash
make install

# run with the following
opengl_spectrogram
```

# Helpers
```bash
# show info regarding audio devices recognized by the OS
device_info
```


See doc/ for Doxygen documentation of the source code.

## Contributors

Currently myself and Alex Barnett. We are happy to enhance this project with others, don't hesitate to reach out!
A special thanks goes out to Alex Barnett for the initial version of this project.
