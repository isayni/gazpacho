# gazpacho
This is to be used with [archiso](https://wiki.archlinux.org/title/Archiso)

my custom build of Arch Linux installation in a Live ISO version

![image](https://user-images.githubusercontent.com/77996376/178722336-13cc910c-cc1b-4f87-bcff-b6f66a4fbc20.png)

### to build it yourself
```bash
git clone --recurse-submodules https://github.com/isayni/gazpacho
cd gazpacho
mkarchiso -v -w /tmp/gazpacho .

# you can then test it by running
run_archiso -u -i out/<gazpacho>.iso
```
