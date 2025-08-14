Here’s a professional, structured `README.md` draft for the repository containing the Kestrun website:

---

# Kestrun Website

This repository contains the source code, documentation, and assets for the **Kestrun** official website, including feature overviews, tutorials, and API references.

## 📖 About Kestrun

**Kestrun** is a flexible, PowerShell-integrated web server framework built on **ASP.NET Core Kestrel**.
It enables developers to combine **PowerShell scripting**, **C# code**, and **modern web technologies** in a unified hosting environment.

The website serves as the central hub for:

* 📚 **Documentation** for Kestrun modules, cmdlets, and APIs.
* 🎯 **Tutorials** to help you get started quickly.
* 🛠 **Integration Guides** for authentication, routing, and advanced features.
* 🔍 **Examples** demonstrating practical use cases.

## 🗂 Repository Structure

```
.
├── docs/                  # Documentation files
│   ├── pwsh/               # PowerShell Cmdlet Docs
│   │   ├── tutorial/       # PowerShell tutorials
|   |   └── ...
│   ├── assets/                 # Images, icons, and static resources
|   ├── _config.yml             # Jekyll site configuration
|   └── index.md                # Homepage content
└── README.md               # This file
```

## 🚀 Getting Started

### Prerequisites

* **Ruby** and **Bundler** for Jekyll
* **Git**
* (Optional) **PowerShell** for testing cmdlet documentation

### Install Dependencies

```bash
bundle install
```

### Run Locally

```bash
bundle exec jekyll serve
```

Then visit:
[http://localhost:4000](http://localhost:4000)

## 🌐 Deployment

This site is automatically deployed to **GitHub Pages** when changes are pushed to the `main` branch.
The workflow builds the documentation and publishes it to the `gh-pages` branch.

## 📂 Documentation Organization

* **PowerShell Cmdlets** — Accessible under the “PowerShell Cmdlets” dropdown (not duplicated at root level).
* **Tutorials** — Located under `docs/pwsh/tutorial` and shown in a dedicated “Tutorials” dropdown.
* **API References** — Linked directly from the homepage for quick navigation.

## 🏠 Homepage

The homepage highlights:

* Key Kestrun features (PowerShell + C# integration, routing, authentication, OpenAPI, logging)
* Quick-start guides
* Links to full documentation, tutorials, and examples

## 🤝 Contributing

1. Fork the repository.
2. Create a feature branch:

   ```bash
   git checkout -b feature/my-improvement
   ```
3. Commit changes and push.
4. Open a Pull Request.

## 📜 License

This repository is licensed under the [MIT License](LICENSE).

---

If you want, I can also prepare a **visually appealing homepage `index.md`** that showcases all Kestrun features with quick links. That would give your site an inviting landing page.
