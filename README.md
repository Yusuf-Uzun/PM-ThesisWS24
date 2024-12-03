
# PM-ThesisWS24

**Containerized Agile Project Management Software**  
Developed by Yusuf Uzun for the Karlsruhe University of Applied Sciences.

---

## ⚠️ CAUTION: Platform Compatibility ⚠️
Currently, Taiga.io only officially supports **AMD-based images**. 
[Read here](https://community.taiga.io/t/how-to-use-taiga-on-arm-with-virtualization/3583/2)

---

## How to Try It Out

Follow these steps to set up and run the Taiga project management software using the provided `launch-taiga.sh` script:

### Prerequisites
1. Ensure Docker is installed and running on your system.
2. Clone or download this repository to your local machine.

---

### Steps to Launch Taiga
1. **Open a terminal**:  
   Launch your terminal or command prompt.

2. **Navigate to the project directory**:  
   Use the `cd` command to move to the root directory of the repository. For example:
   ```bash
   cd PM-ThesisWS24
   ```

3. **Choose the platform (AMD or ARM)**:  
   Depending on your system architecture, specify the platform:
   - For AMD-based systems:
     ```bash
     ./launch-taiga.sh --platform amd
     ```
   - For ARM-based systems:
     (See [How to Use Taiga on ARM with Virtualization](https://community.taiga.io/t/how-to-use-taiga-on-arm-with-virtualization/3583/2))

4. **Wait for setup to complete**:  
   The script will pull the necessary Docker images, create containers, and start the Taiga application. This process may take a few moments if images are being downloaded for the first time.

5. **Access the application**:  
   Once the setup is complete, open your web browser and navigate to:
   ```
   http://localhost:9000
   ```
   Here, you can interact with the Taiga project management interface.

---

### Stopping Taiga
To stop the running containers, use the `stop-taiga.sh` script:
```bash
./stop-taiga.sh --platform <amd|arm>
```

---

### Creating a Superuser
If you need to create an admin account (superuser) for the application, use the `create-superuser.sh` script:
```bash
./create-superuser.sh --platform <amd|arm>
```

---