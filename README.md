# data-science-on-gcp

Source code accompanying book:

<table>
<tr>
  <td>
  <img src="cover_edition2.jpg" height="100"/>
  </td>
  <td>
  <a href="https://www.amazon.com/Data-Science-Google-Cloud-Platform/dp/1098118952/">Data Science on the Google Cloud Platform, 2nd Edition</a> <br/>
  Valliappa Lakshmanan <br/>
  O'Reilly, Apr 2022
  </td>
  <td>
  Branch <a href="https://github.com/GoogleCloudPlatform/data-science-on-gcp/">2nd Edition</a> [also main]
  </td>
</tr>
</table>

### Try out the code on Google Cloud Platform
<a href="https://console.cloud.google.com/cloudshell/open?git_repo=https://github.com/GoogleCloudPlatform/data-science-on-gcp&page=editor&open_in_editor=README.md"> <img alt="Open in Cloud Shell" src ="http://gstatic.com/cloudssh/images/open-btn.png"></a>

The code on Qwiklabs (see below) is **continually tested**, and this repo is kept up-to-date.

If the code doesn't work for you, I recommend that you try the corresponding Qwiklab lab to see if there is some step that you missed.
If you still have problems, please leave feedback in Qwiklabs, or file an issue in this repo.

### Try out the code on Qwiklabs

- [Data Science on the Google Cloud Platform Quest](https://google.qwiklabs.com/quests/43)
- [Data Science on Google Cloud Platform: Machine Learning Quest](https://google.qwiklabs.com/quests/50)


### Updates to book
I updated the book in Nov 2019 with TensorFlow 2.0, Cloud Functions, and BigQuery ML.

---

# Notas personales

Contenido:
* [Google Cloud SDK](#google-cloud-sdk)

## Google Cloud SDK

### Instalación de CLI

Para seguir los capítulos del libro prefiero utilizar el SDK, para lo cual es necesario instalarlo y habilitarlo dentro de VSCode con PowerShell. Sigue los siguientes pasos de instalación:

Pre-requisitos:

* Tener Visual Studio Code instalado
* Tener Git instalado y habilitado

Pasos de instalación de Google Cloud SDK en PowerShell:

En general, los pasos aquí descritos se pueden encontrar en la [documentación](https://cloud.google.com/sdk/docs/install).

1) Abre un terminal de PowerShell
2) Descarga el instalador con el comando:

```powershell
(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe","$env:Temp\GoogleCloudSDKInstaller.exe")
```

3) Ejecuta el instalador con el comando:

```powershell
& $env:Temp\GoogleCloudSDKInstaller.exe    
```

4) Estas acciones abriran un Wizard con el instalador de Google CLoud SDK.
5) Continúa con las opciones por defecto del Wizard hasta que concluya la instalación.
6) Una vez concluida la instalación se ejecutará por defecto una sesión de SDK con el comando:

```powershell
gcloud init
```

7) Configura la sesión del SDK proporcionando tus credenciales de GCP así como los permisos correspondientes.
8) Cierra la sesión de SDK y verifica que puedes usar los comandos del SDK ejecutando en una terminal de PowerShell el comando:

```powershell
gcloud auth list
```

### Habilitar funciones de VSCode

Instrucciones más detalladas se encuentran en la [documentación](https://cloud.google.com/code/docs/vscode/install) para la instalación y aprovisionamiento de VS Code.

1) Abre una sesión de VS Code.
2) Busca e instala el paquete `Google Cloud Code` en las extensiones de VSCode.
3) Reinicia la sesión de VS Code una vez que termine la instalación.
4) Inicia sesión con tu cuenta de GCP dentro del paquete de VS Code.
