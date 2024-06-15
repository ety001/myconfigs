# Hardware video acceleration

```
sudo pacman -S intel-media-driver libva-vdpau-driver
```

## verification 

```
mpv --hwdec=auto video_filename
```

for intel GPU, use `intel-gpu-tools` and run `intel_gpu_top`
