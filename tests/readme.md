# Robot Framework installation and usage

## Requirements

* Python 2.7
* Java SE Runtime Environment (JRE)

## Install

1. Set up JRE, if not installed
    * On Ubuntu: `sudo apt-get install default-jre`
2. Set up Python 2.7, if not installed
    * Install Python 2.7 (don't forget to set Python path in the environment variables)
    * Check environment variables (needs Python27/ and Python27/Scripts/ folders added)
        * On Windows:
            * Start (context menu) > System > Advanced system settings > Environment Variables...
            * Check PATH for: Python27/ and Python27/Scripts/
3. Set up PIP, if not installed with Python
    * `sudo apt-get install python-pip`
4. Install Robot Framework
    * `pip install --upgrade pip`
    * `pip install robotframework`
        * in case of permission errors, try: `python -m pip install robotframework`
5. Install Selenium Library
    * Ubuntu: `sudo -H pip install robotframework-selenium2library`
    * macOS: `python -m pip install robotframework-selenium2library`
6. Install extended library (for Angular2 projects only)
    * Ubuntu: `sudo -H pip install robotframework-extendedselenium2library`
    * macOS: `python -m pip install robotframework-extendedselenium2library`
7. Install Gecko driver
    * See at https://github.com/mozilla/geckodriver/releases
    * Ubuntu: Move the extracted `geckodriver` file to `/usr/bin`
    * macOS: Move the extracted `geckodriver` to a custom folder, and add the folder to PATH in `~/.bash_profile`
8. Install Chrome driver
    * See at https://chromedriver.storage.googleapis.com/index.html?path=2.27/
    * Install the same way as the Gecko driver
9. Install Selenium Screenshots Library (optional)
    * macOS: `python -m pip install robotframework-selenium2screenshots`
10. Set up `variables.py` in `tests/robot` using `variables.example.py`

## Run tests

* Change directory to `tests/robot`
* Run `./robot.sh` for running all robot tests
    * For frontend tests only run: `./robot.sh frontend` (works for any test directory)
* To start a single suite run: `pybot -s *search_page* -d output frontend/main_pages`

### Templates

* Templates are located in the `resource` subdirectories of every test directory

## Robot Framework Documentation
http://robot-framework.readthedocs.io/en/latest/

## Useful Links:
* Selenium2Library: http://robotframework.org/Selenium2Library/Selenium2Library.html
* ExtendedSeleuium2Library: https://rickypc.github.io/robotframework-extendedselenium2library/doc/ExtendedSelenium2Library.html
* Stylers documentation: https://docs.google.com/a/stylersonline.com/document/d/1xEQB_GZt22h5KxWDwv_VIYXSmqp-adZ0CDIKPRr7-ro/edit?usp=sharing
* RFW homepage: http://robotframework.org/
* Python homepage: https://www.python.org/
* Official Robot Framework Library: https://pypi.python.org/pypi?%3Aaction=search&term=robotframework&submit=search