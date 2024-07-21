# Stock_Project

## Overview

Stock_Project is a comprehensive solution for managing stock-related operations. This project includes a backend system designed to fetch and process stock data.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Linux, macOS, or Windows operating system
- Python installed
- Required Python packages installed
- `ngrok` installed and configured

## Configuration

1. **Download and Configure Files:**

    Download the following files and place them in the specified directory:

    - `stock-backend/src/backend/config`
    - `stock-backend/src/backend/key.json`

    Ensure the `config` file contains the necessary configuration details and `key.json` contains your authentication keys.

## Setup

### Step 1: Create a vite react project

```sh
npm create vite@latest Stock-frontend --template react
npm install
```

### Step 2: Clone the Repository

Clone the project repository to your local machine using the following command:

```sh
git clone https://github.com/DennisLiu525/Stock_Project.git
```

### Step 3: Install Dependencies

Navigate to the project directory and install the required Python packages. It's recommended to use a virtual environment.

```sh
conda update conda
conda create -n StockEnv python=3.12
conda activate StockEnv
conda install pip
cd Stock-backend
pip install -r requirements.txt
```

For PyTorch installation, visit [PyTorch's Get Started Locally](https://pytorch.org/get-started/locally/) to find the correct installation command for your system. Below is an example command:

```sh
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia # search version for your own
```
For Ngrok installation, visit [Ngrok](https://ngrok.com/) to find the correct installation command for your system

For Ngrok basic initialization, visit [Ngrok basic setup](https://happy9990929.github.io/2022/06/13/frontend-ngrok/)

For Ngrok advance usage, visit [Ngrok advanced usage](https://medium.com/coding-with-fun-favor/%E9%97%9C%E6%96%BC-ngrok-%E7%9A%84%E4%BA%8C%E4%B8%89%E4%BA%8B-da12e19e4340)

### Step 4.1: Run Comprehensive

Navigate to the project directory and run the `run.sh` script:

```sh
sh ./run.sh
```

This script will:
- Start `ngrok`
- Fetch the public URL
- Start the backend services
- Start the frontend services

### Step 4.2: Run Seperately
```sh
sh ./start_ngrok.sh
```
or
```sh
ngrok start --all --config=ngrok.yml
```

## Notes

- Ensure `ngrok` is properly set up and authenticated with your account.
- Modify the paths in the `run.sh` script to match your local setup if necessary.
- If you encounter any issues, check the log outputs in the respective terminal windows for debugging information.

## Contact

If you have any questions or run into issues, feel free to contact the project maintainers.

---

Happy Coding!
