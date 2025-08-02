---

# 🚀 Flask App on AWS Lambda with CI/CD using SAM + CodePipeline

This project demonstrates a **production-ready CI/CD pipeline** to deploy a **containerized Flask application** on **AWS Lambda**, using **AWS SAM**, **API Gateway**, **ECR**, and **CodePipeline** — fully automated and built for DevOps portfolios.

---

## 📌 Tech Stack

| Layer        | Tech Used                          |
|--------------|------------------------------------|
| Backend App  | Python Flask (Dockerized)          |
| Serverless   | AWS Lambda (Container Image)       |
| API Gateway  | REST API exposed via HTTP          |
| CI/CD        | AWS CodePipeline + CodeBuild       |
| Infra as Code| AWS SAM (Serverless Application Model) |
| Container Registry | Amazon ECR                   |
| Source Repo  | GitHub (public)                    |

---

## 🗂️ Project Structure

```

aws\_cicd\_flask\_project/
├── app.py                   # Flask app entrypoint
├── Dockerfile               # Lambda-compatible container
├── buildspec.yml            # Build instructions for CodeBuild
├── pipeline.yaml            # CloudFormation template for CodePipeline
├── sam-config.toml          # SAM CLI config
├── template.yaml            # SAM deployment template
├── auto-deploy-pipeline.sh  # One-shot script to deploy everything
├── requirements.txt         # Python deps for Flask
└── README.md                # You're here!

````

---

## 🔁 CI/CD Pipeline Flow

1. **Push to GitHub**
2. **CodePipeline** triggers automatically
3. **CodeBuild** builds Docker image from `Dockerfile`
4. Image pushed to **ECR**
5. **SAM** deploys updated Lambda function
6. **API Gateway** reflects new version instantly

---

## 🧪 Run Locally (Optional)

```bash
git clone https://github.com/<your-username>/aws_cicd_flask_project.git
cd aws_cicd_flask_project

# Build & run container locally
docker build -t flask-lambda .
docker run -p 9000:8080 flask-lambda

# Test locally
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
````

---

## 🚢 One-Click Deployment via Script

> Assumes AWS CLI configured & IAM roles ready.

```bash
./auto-deploy-pipeline.sh
```

This will:

* Create S3 bucket (if needed)
* Deploy CodePipeline + CodeBuild + Lambda infra
* Connect with GitHub repo
* Complete CI/CD flow

---

## 🌐 API Endpoint Example

```bash
curl https://<your-api-id>.execute-api.<region>.amazonaws.com/Prod/
```

Response:

```json
{ "message": "Hello from Flask running on AWS Lambda!" }
```

---

## ✅ Use Cases

* ⚙️ DevOps CI/CD showcase
* 🧪 Testing Lambda with containers
* 🔄 GitOps-friendly Lambda workflows
* 🧑‍💻 Serverless portfolio project

---

## 🔐 IAM & Security Notes

* CodePipeline and CodeBuild roles have limited, scoped permissions.
* Lambda uses container image with no public exposure except via API Gateway.
* ECR is private and accessed only via IAM-authenticated build steps.

---

## 📦 Future Enhancements

* Add unit tests with pytest
* Add logging and metrics (CloudWatch)
* Add GitHub Actions support (alternative CI)
* Auto-deploy frontend or documentation site

---

## 👨‍💻 Author

**Rewat Singh**
*DevOps Engineer | Cloud | CI/CD | AWS*
