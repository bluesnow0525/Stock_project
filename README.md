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

### Step 1: Clone the Repository

Clone the project repository to your local machine using the following command:

    ```sh
    git clone <repository_url>
    ```

### Step 2: Install Dependencies

Navigate to the project directory and install the required Python packages. It's recommended to use a virtual environment.

    ```sh
    cd stock-backend/src/backend
    python -m venv env
    source env/bin/activate  # On Windows use `env\Scripts\activate`
    pip install -r requirements.txt
    ```

For PyTorch installation, visit [PyTorch's Get Started Locally](https://pytorch.org/get-started/locally/) to find the correct installation command for your system. Below is an example command:

    ```sh
    pip install conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia # search version for your own
    ```

### Step 3: Run

Navigate to the project directory and run the `run.sh` script:

    ```sh
    sh ./run.sh
    ```

This script will:
- Start `ngrok`
- Fetch the public URL
- Start the backend services

## Notes

- Ensure `ngrok` is properly set up and authenticated with your account.
- Modify the paths in the `run.sh` script to match your local setup if necessary.
- If you encounter any issues, check the log outputs in the respective terminal windows for debugging information.

## Contact

If you have any questions or run into issues, feel free to contact the project maintainers.

---

Happy Coding!
