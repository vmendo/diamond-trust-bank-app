# DTB_APP_POC

Database CI/CD project using SQLcl Projects and release artifacts compatible with automated deployments.

## 📦 Project Structure

- db/ — SQLcl project source (exported objects)
- db/properties/project.properties — SQLcl project settings
- .dbtools/filters/project.filters — object filters for export/stage/release
- dist/releases/ — generated release artifacts (versioned)
- includes/ — SQL source files included in releases

## 🔧 Requirements

- SQLcl 25.3+ (with project commands enabled)
- Java 17+
- Oracle Database (ATP/ADB or On-Prem)
- Git and GitHub CLI (gh) for repository management

## 🔑 Environment Variables (from setup_env.sh)

- PROJECT_NAME="DTB_APP_POC"
- PROJECTS_HOME="/home/opc/projects"
- SCHEMA_NAME="WKSP_WSDTBDEV"
- GITHUB_URL="https://github.com/vmendo/diamond-trust-bank-app.git"

## 📝 Filters

You can customize which objects are included in the project by editing:

- DTB_APP_POC/.dbtools/filters/project.filters

