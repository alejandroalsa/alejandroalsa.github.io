---
title: IP Privada Fija en Linux
date: 2023-07-16 12:00:00 +0800
categories: [Configuración Redes, IP]
tags: [ip-privada-fija]
---

# IP Privada Fija en Linux

En primer lugar, debera identificar la interfaz de red que desea configurar. Puede usar el comando `ip addr show` para ver una lista de todas las interfaces de red disponibles en su equipo.

En segundo lugar debera editar el archivo de configuracion, este se encontrara en `/etc/netplan/`{: .filepath}, en este directorio podemos encontrar el archivo `.yaml` que deveremos editar, su nombre puede variar entre: `00-installer-config.yaml`, `01-network-manager-all.yaml`, etc.

El archivo por defecto tiene el siguiente formato:

```yaml
network:
  ethernets:
    enp0s3:
      dhcp4: true
  version: 2
```

El archivo modificado para obtener una IP Estática tendria el siguiente formato:

```yaml
network:
  ethernets :
    eth0:                               #Tarjeta de Red.
      dhcp4: no
      addresses: [10.10.10.10/24]       #Dirección IP del Equipo.
      gateway4: 10.10.10.1              #Puerta de enlace.
      nameservers:
        addresses: [1.1.1.1, 8.8.8.8]   #Servidores DNS.
  version: 2
```

Después de editar el fichero tendremos que aplicar los cambios, para ello emplearemos el siguiente comando:

```bash
sudo netplan apply
```

Con estos cambios ya tendremos configurada nuestra IP Privada Estática.
