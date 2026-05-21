# 🌌 Mi Entorno Personalizado en Sway (Parrot OS)

Este repositorio contiene mis archivos de configuración personales (`dotfiles`) para estructurar un entorno de escritorio (ricing) ultra ligero, estético y eficiente, optimizado para flujos de trabajo de ciberseguridad.

---

## 🛠️ Componentes del Sistema (Lista de Dependencias)

Para que este entorno funcione idéntico en cualquier instalación limpia, se deben instalar los siguientes paquetes:

### 1. El Núcleo (Administración de Ventanas)
* **`sway`**: El gestor de ventanas por tiling basado en Wayland.
* **`autotiling`**: Demonio en Python que automatiza la división de ventanas siguiendo la proporción áurea (Secuencia de Fibonacci).

### 2. Estética e Interfaz
* **`waybar`**: Barra de estado moderna basada en JSON y CSS (Reemplaza a `swaybar`).
* **`kitty`**: Emulador de terminal acelerado por GPU, con soporte para transparencias.
* **`swaybg`**: Herramienta nativa para gestionar fondos de pantalla en Wayland.

### 3. Herramientas de Control (Interactividad)
* **`network-manager-gnome`**: Proporciona el applet visual (`nm-applet`) y el editor gráfico de conexiones para el WiFi.
* **`blueman`**: Gestor gráfico completo para emparejar y administrar dispositivos Bluetooth (`blueman-manager`).

---

## 🚀 Guía de Instalación Rápida

Si estás en una instalación limpia de Parrot OS o Debian, ejecuta los siguientes comandos para descargar todas las herramientas de un solo golpe:

```bash
# 1. Actualizar los repositorios del sistema
sudo apt update

# 2. Instalar todos los componentes y dependencias necesarias
sudo apt install -y sway waybar kitty swaybg autotiling network-manager-gnome blueman wget unzip

# Crear la carpeta .config si no existe
mkdir -p ~/.config

# Enlazar las configuraciones de mi repositorio local
ln -sf ~/dotfiles/sway ~/.config/sway
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/waybar ~/.config/waybar

#Fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget [https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
unzip FiraCode.zip
rm FiraCode.zip
fc-cache -fv # Fuerza la actualización del caché de fuentes del sistema
```
