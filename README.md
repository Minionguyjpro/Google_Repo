# Google_Repo
Sets up a Google Repo environment using a container, including Google's repo.
# Instructions
1. Make sure you have Docker installed.
   * Install Docker on your Linux distribution by running ``sudo apt-get install docker`` from the terminal.
2. Open your terminal.
3. Run ``docker run -it --entrypoint /bin/bash minionguyjpro/google_repo`` when running local to get into your Google Repo environment.
   * When using certain sites such as GitHub Actions, you don't need to run commands but just use ``minionguyjpro/google_repo`` as the container.

**To exit**: run the command ``exit`` and you'll get back to your normal environment.
