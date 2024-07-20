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
```sh
cd stock-backend/src/backend
python -m venv env
source env/bin/activate  # On Windows use `env\Scripts\activate`
pip install -r requirements.txt
```

### Step 3: Run
```sh
sh ./run.sh
```
