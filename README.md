# Nginx Log Analyzer 📊

A simple bash script to analyze Nginx access logs and extract useful statistics.

## 🔧 Features

- ✅ Top 5 IP addresses with most requests
- ✅ Top 5 most requested paths
- ✅ Top 5 response status codes
- ✅ Top 5 user agents

## 🚀 How to Use

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/nginx-log-analyzer.git
cd nginx-log-analyzer
2. Download Sample Nginx Log
bash
Copy
Edit
wget https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs
mv nginx_logs access.log
3. Make Script Executable
bash
Copy
Edit
chmod +x log_analyzer.sh
4. Run the Script
bash
Copy
Edit
./log_analyzer.sh
📂 Example Output
text
Copy
Edit
📊 Top 5 IP addresses with the most requests:
216.46.173.126 - 2350 requests
...

🌐 Top 5 most requested paths:
/downloads/product_1 - 30285 requests
...

📦 Top 5 response status codes:
404 - 33876 requests
...

🧑‍💻 Top 5 user agents:
Debian - 11830 requests
...
📁 File Structure
perl
Copy
Edit
nginx-log-analyzer/
├── access.log           # Nginx access log file (downloaded)
├── log_analyzer.sh      # The main analysis script
└── README.md            # This file

This is the project link: https://roadmap.sh/projects/nginx-log-analyser
