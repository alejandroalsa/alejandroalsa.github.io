---
page.title: "Instalación de un Servicio de DHCP en Ubuntu Server 22 LTS"
---

# Instalación de un Servicio de DHCP en Ubuntu Server 22 LTS

Intalacion del Servidor DHCP

```bash
sudo apt-get install isc-dhcp-server -y
```

Asiganmos una tarjeta de red al Servidor DHCP

```bash
sudo nano /etc/default/isc-dhcp-server
```

```
# Defaults for isc-dhcp-server (sourced by /etc/init.d/isc-dhcp-server)

# Path to dhcpd's config file (default: /etc/dhcp/dhcpd.conf).
#DHCPDv4_CONF=/etc/dhcp/dhcpd.conf
#DHCPDv6_CONF=/etc/dhcp/dhcpd6.conf

# Path to dhcpd's PID file (default: /var/run/dhcpd.pid).
#DHCPDv4_PID=/var/run/dhcpd.pid
#DHCPDv6_PID=/var/run/dhcpd6.pid

# Additional options to start dhcpd with.
#	Don't use options -cf or -pf here; use DHCPD_CONF/ DHCPD_PID instead
#OPTIONS=""

# On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
#	Separate multiple interfaces with spaces, e.g. "eth0 eth1".
INTERFACESv4="enp0s8"
INTERFACESv6=""
```
Antes de relizar este paso es importante tener configurada una dirección IP Fija en dicha interfaz de red.

## Configuracion Basica 

Editamos el fichero `dhcpd.conf`

```bash
sudo nano /etc/dhcp/dhcpd.conf
```

```
option domain-name "alejandroalsa.es";
option domain-name-servers ###.###.###.###;

default-lease-time 600;
max-lease-time 7200;

# A slightly different configuration for an internal subnet.
subnet ###.###.###.### netmask ###.###.###.### {
  range ###.###.###.### ###.###.###.###;
  option domain-name-servers ###.###.###.###;
#  option domain-name "internal.example.org";
#  option subnet-mask ###.###.###.###;
  option routers ###.###.###.###;
  option broadcast-address ###.###.###.###;
  default-lease-time 600;
  max-lease-time 7200;
}
```

## Configuracion de IP reservada

```
host Equipo_01 {
  hardware ethernet ##:##:##:##:##:##;
  fixed-address ###.###.###.###;
  option domain-name-servers ###.###.###.###;
  option subnet-mask ###.###.###.###;
  option routers ###.###.###.###;
  default-lease-time 600;
  max-lease-time 7200;
}
```

## Configuracion de IPs a subredes

```
subnet ###.###.###.### netmask ###.###.###.### {
  range dynamic-bootp ###.###.###.### ###.###.###.###;
  option broadcast-address ###.###.###.###;
  option domain-name-servers ###.###.###.###;
  option routers ###.###.###.###;
  default-lease-time 600;
  max-lease-time 7200;
  }
```
## Opciones principales

*   **hardware ethernet** Direcion MAC
*   **fixed-address** Direccion IP
*   **range** Rango de asignacion de direcciones IP
*   **range dynamic-bootp** Rango de asignacion de direcciones IP para subredes
*   **option domain-name-servers** Servidores DNS
*   **option broadcast-address** Direccion de Broadcast
*   **option subnet-mask** Mascara de Subred
*   **option routers** IP del router
*   **default-lease-time** Tiempo de asignacion predeterminado
*   **max-lease-time** Tiempo maximo de asignacion

## Aplicamos los cambios

Reiniciamos el servidor
```bash
sudo systemctl reload isc-dhcp-server.service
```

Comprovamos que todo este bien.
```bash
sudo systemctl status isc-dhcp-server.service
```

[Teoria de un DHCP](/so/ubuntu-server/servicios/dhcp/teoria)
