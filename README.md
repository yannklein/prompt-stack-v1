<a name="readme-top"></a>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/yannklein/prompt-stack-v1">
    <img width="73" height="73" alt="image" src="https://github.com/yannklein/prompt-stack-v1/assets/26819547/0fe4aefd-f3bc-4405-93b7-39ff1b778606" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Prompt stack v1</h3>

  <p align="center">
    A static website coded with no HTML, no CSS and no Javascript, just AI
    <br />
    <br />
    <a href="#demo">Demo</a>
    ·
    <a href="https://github.com/yannklein/prompt-stack-v1/issues">Report Bug</a>
    ·
    <a href="https://github.com/yannklein/prompt-stack-v1/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#demo">Demo</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

The Ruby Sinatra application that use the "Prompt-stack". Instead of building HTML, CSS and Javascript the traditional way, it asks Open AI to produce the frontend code and displays it. 
<br><br>
<kbd>  
  <img width="299" alt="image" src="https://github.com/yannklein/prompt-stack-v1/assets/26819547/3f7d41bb-8d16-46fa-b7b8-fa9fbf38cf3d">
</kbd>
<br><br>
The project uses [a homemade proxy website](https://github.com/yannklein/openai-proxy) that limits the amount of OpenAI API calls per day.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With
* [![openai][openai]][openai-url]
* [![ruby][ruby]][ruby-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Demo

Test the website [here](http://prompt-stack-v1-0310041ff890.herokuapp.com/) 👉 ⚠️ It is on a very cheap hosting service so it needs to load for a while and might give you an error at first load. Just refresh the page if it happens.

https://github.com/yannklein/prompt-stack-v1/assets/26819547/bbb9bccf-dae2-4555-a4e1-7585034db3d8





<!-- GETTING STARTED -->

### Prerequisites

This project needs a environment with Ruby.

### Installation

1. Install ruby packages using the Gemfile command:
   ```sh
   bundle install
   ```
2. Create an `.env` file containing your openai api key or your openai api proxy website url:
   ```
   OPENAI_API_KEY=sk-sKXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   OPENAI_API_PROXY=https://openai-proxy-XXXXXXXXXXXXXX.com
   ```

4. Run the Sinatra app with the command:
   ```sh
   ruby app.rb
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Check and follow the steps of the video <a href="#demo">Demo</a>.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] Build a static prompt stack webiste
- [ ] Build a fullstack prompt stack webiste
- [ ] Add image generation
- [ ] Let AI do more customizations on the website

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
* [OpenAI API](https://openai.com/blog/openai-api)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
[Python]: https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=FFE466
[Python-url]: https://www.python.org
[ffmpeg]: https://img.shields.io/badge/ffmpeg-007808?style=for-the-badge&logo=ffmpeg&logoColor=black
[ffmpeg-url]: https://ffmpeg.org
[chrome]: https://img.shields.io/badge/Chrome%20Extension-lightgray?style=for-the-badge&logo=googlechrome&logoColor=FC521F
[chrome-url]: https://chromewebstore.google.com
[Flask]: https://img.shields.io/badge/flask-black?style=for-the-badge&logo=flask&logoColor=white
[Flask-url]: https://flask.palletsprojects.com/en/3.0.x/
[googletranslate]: https://img.shields.io/badge/googletranslate-4285F4?style=for-the-badge&logo=googletranslate&logoColor=white
[googletranslate-url]: https://cloud.google.com/translate
[openai]: https://img.shields.io/badge/WhisperAI-4285F4?style=for-the-badge&logo=openai&logoColor=white
[openai-url]: https://openai.com/research/whisper
[rubyonrails]: https://img.shields.io/badge/rubyonrails-D30001?style=for-the-badge&logo=rubyonrails&logoColor=black
[rubyonrails-url]: https://rubyonrails.org/
[ruby]: https://img.shields.io/badge/Ruby-D30001?style=for-the-badge&logo=ruby&logoColor=black
[ruby-url]: https://www.ruby-lang.org/en/
