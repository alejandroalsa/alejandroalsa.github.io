---
page.title: "IP Privada Fija Ubuntu Server 2022"
---

# IP Privada Fija Ubuntu Server 2022

IP Privada Fija Ubuntu Server 2022

> Actualizado a 13 Oct 2022

El archivo que tendremos que editar será `00-installer-config.yaml`, la ruta del archivo es la siguiente:

`/etc/netplan/00-installer-config.yaml`

Configuraremos el archivo de la siguiente forma:

```
sudo nano /etc/netplan/00-installer-config.yaml
```

El archivo de fábrica tiene el siguiente formato:

```yalm
network:
  ethernets:
    enp0s3:
      dhcp4: true
  version: 2
```

El archivo modificado para obtener una IP Estática tiene el siguiente formato:

```yalm
network:
  ethernets :
    ######:             #Tarjeta de Red.
      dhcp4: no
      addresses: [###.###.###.###/##]
      gateway4: ###.###.###.###
      nameservers:
        addresses: [8.8.8.8, 1.1.1.1]
  version: 2
```

Después de editar el fichero tendremos que aplicar los cambios, para ello emplearemos el siguiente comando:

`sudo netplan apply`

Con estos cambios ya tendremos configurada nuestra IP Privada Estática.

[00-installer-config->Fabrica](/so/ubuntu-server/configuracion/fab/00-installer-config.yaml)

[00-installer-config->Modificado](/so/ubuntu-server/configuracion//mod/00-installer-config.yaml)