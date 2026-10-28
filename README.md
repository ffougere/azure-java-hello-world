# Azure Java Hello World

This project is a simple Java application that prints "Hello, World!" to the console. It is designed to be deployed on Azure using GitHub Actions.

## Project Structure

```
azure-java-hello-world
├── .github
│   └── workflows
│       └── deploy.yml
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── example
│       │           └── helloworld
│       │               └── HelloWorldApplication.java
│       └── resources
│           └── application.properties
├── .gitignore
├── README.md
├── pom.xml
├── azure.yaml
├── Dockerfile
└── system.properties
```

## Prerequisites

- Java Development Kit (JDK) 11 or higher
- Maven
- Docker (for building the Docker image)
- Azure account

## Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/azure-java-hello-world.git
   cd azure-java-hello-world
   ```

2. **Build the application:**
   ```bash
   mvn clean package
   ```

3. **Run the application locally:**
   ```bash
   java -cp target/your-artifact-name.jar com.example.helloworld.HelloWorldApplication
   ```

4. **Build the Docker image:**
   ```bash
   docker build -t azure-java-hello-world .
   ```

5. **Deploy to Azure:**
   The deployment is automated using GitHub Actions. Push your changes to the main branch, and the workflow defined in `.github/workflows/deploy.yml` will handle the deployment to Azure.

## Usage

After deployment, you can access the application via the Azure App Service URL provided in your Azure portal.

## License

This project is licensed under the MIT License. See the LICENSE file for details.