<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>
<!--
*** Source:
*** https://github.com/othneildrew/Best-README-Template
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![Processing][processing_second-shield]][processing-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/olmomoreno/city_telescope">
    <img src="data/images/processing_2021_logo.png" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">City telescope</h3>

  <p align="center">
    A Processing interactive sketch
    <br />
    <a href="https://github.com/olmomoreno/city_telescope"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/olmomoreno/city_telescope">View Demo</a>
    &middot;
    <a href="https://github.com/olmomoreno/city_telescope/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    &middot;
    <a href="https://github.com/olmomoreno/city_telescope/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>📋 Table of Contents</summary>
  <ol>
    <li>
      <a href="#-about-the-project">About The Project</a>
      <ul>
        <li><a href="#%EF%B8%8F-built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#-getting-started">Getting Started</a>
      <ul>
        <li><a href="#-installation">Installation</a></li>
         <li><a href="#-opening">Opening</a></li>
      </ul>
    </li>
    <li><a href="#%EF%B8%8F-usage">Usage</a></li>
    <li><a href="#%EF%B8%8F-roadmap">Roadmap</a></li>
    <li><a href="#-contributing">Contributing</a></li>
    <li><a href="#-license">License</a></li>
    <li><a href="#-contact">Contact</a></li>
    <li><a href="#-acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## 📖 About The Project

[![City_telescope][product-screenshot]](https://github.com/olmomoreno/city_telescope)

This is an interactive Processing sketch. It displays a transparent circle controlled by the mouse. The transparent circle acts as the lense of a telescope. Under it, it is displayed the image of a city. It is possible to zoom in and zoom out using the slider in the card control area.                          
<p align="right">(<a href="#readme-top">back to top</a>)</p>



### 🛠️ Built With

* [![Processing][processing-shield]][processing-url]
* [![VSCode][vscode-shield]][vscode-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## 🚀 Getting Started

This section will help you get Processing installed and show you how to open the `city_telescope` sketch.

### 🧩 Installation

Follow these steps to install **Processing** on your computer:

#### 🖥️ For Windows
1. 🔽 Download the latest version of Processing from the official website: [https://processing.org/download](https://processing.org/download)
2. 📦 Unzip the downloaded `.zip` file.
3. 🖱️ Open the unzipped folder and double-click `processing.exe` to launch Processing.
4. ✅ You're ready to run sketches!

#### 🐧 For Linux
1. 🔽 Download the Linux version from: [https://processing.org/download](https://processing.org/download)
2. 📦 Extract the archive (`.tar.gz`) to a folder of your choice.
3. 💻 Open a terminal and navigate to the extracted folder.
4. 🏁 Launch Processing by running:
   ```bash
   ./processing

### 📂 Opening

To open the city_telescope sketch in Processing:

🧭 Launch the Processing IDE.

1. 📁 Go to File > Open...
2. 📂 Navigate to the city_telescope folder.
3. 📄 Select the city_telescope.pde file.
4. ▶️ Click the Run button (or press Ctrl + R) to execute the sketch.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## 🛠️ Usage

In this sketch there are two cities to zoom in/out with the virtual telescope (day and night city).

#### 🌆 City Definitions

```java
  // Displays the city image
  //PImage city = city_1; // Night city image
  PImage city = city_2; // Day city image
  int topZoomValue = 20;
  int imageWidthCoefficient  = (city.width  - width)/topZoomValue;
  int imageHeightCoefficient = (city.height - height)/topZoomValue;
  int imageWidth  = ((zoomValue - 1) * imageWidthCoefficient) + width;
  int imageHeight = ((zoomValue - 1) * imageHeightCoefficient) + height;
  int imageXpos = ((zoomValue - 1) * imageWidthCoefficient)  * -1;
  int imageYpos = ((zoomValue - 1) * imageHeightCoefficient) * -1;
  image(city, imageXpos, imageYpos, imageWidth, imageHeight);
```

To change the image of the city, locate the following line in the `.pde` file:
```java
//PImage city = city_1; // Night city image
```

Remove the comment lines from it:

```java
PImage city = city_1; // Night city image
```

And comment the next line:

```java
//PImage city = city_2; // Day city image
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## 🗺️ Roadmap

- [x] Add city image
- [x] Add card GUI
- [x] Add card control interaction
- [x] Add zoom control interaction

See the [open issues](https://github.com/olmomoreno/city_telescope/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## 🤝 Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/city_telescope`)
3. Commit your Changes (`git commit -m 'Add some city_telescope'`)
4. Push to the Branch (`git push origin feature/city_telescope`)
5. Open a Pull Request

### 🏆 Top contributors:

<a href="https://github.com/olmomoreno/city_telescope/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=olmomoreno/city_telescope" alt="contrib.rocks image" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## 📄 License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## 📬 Contact

Olmo A. Moreno F. - [Linkedin](https://www.linkedin.com/in/olmo-alonso-moreno-franco/)

Project Link: [https://github.com/olmomoreno/city_telescope](https://github.com/olmomoreno/city_telescope)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## 🎉 Acknowledgments

Template adapted from [othneildrew/Best-README-Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/olmomoreno/city_telescope.svg?style=for-the-badge
[contributors-url]: https://github.com/olmomoreno/city_telescope/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/olmomoreno/city_telescope.svg?style=for-the-badge
[forks-url]: https://github.com/olmomoreno/city_telescope/network/members
[stars-shield]: https://img.shields.io/github/stars/olmomoreno/city_telescope.svg?style=for-the-badge
[stars-url]: https://github.com/olmomoreno/city_telescope/stargazers
[issues-shield]: https://img.shields.io/github/issues/olmomoreno/city_telescope.svg?style=for-the-badge
[issues-url]: https://github.com/olmomoreno/city_telescope/issues
[license-shield]:  https://img.shields.io/badge/LICENSE-MIT_LICENSE-FFFFFF.svg?style=for-the-badge
[license-url]: https://github.com/olmomoreno/city_telescope/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: data/images/square_bounces.gif
[processing-shield]: https://img.shields.io/badge/Designed_for-Processing-FFFFFF.svg?style=for-the-badge&logo=processingfoundation
[processing_second-shield]: https://img.shields.io/badge/Processing-006699.svg?style=for-the-badge&logo=processingfoundation
[processing-url]: https://processing.org/
[vscode-shield]: https://img.shields.io/badge/Coded_with-VSCode-FFFFFF.svg?style=for-the-badge
[vscode-url]: https://code.visualstudio.com/
