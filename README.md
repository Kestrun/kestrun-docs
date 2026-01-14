# Kestrun Website

This repository contains the source code, documentation, and assets for the **Kestrun** official website,
including feature overviews, tutorials, and API references.

## 📖 About Kestrun

**Kestrun** is a flexible, PowerShell-integrated web server framework built on **ASP.NET Core Kestrel**.
It enables developers to combine **PowerShell scripting**, **C# code**, and **modern web technologies** in a unified hosting environment.

The website serves as the central hub for:

* 📚 **Documentation** for Kestrun modules, cmdlets, and APIs.
* 🎯 **Tutorials** to help you get started quickly.
* 🛠 **Integration Guides** for authentication, routing, and advanced features.
* 🔍 **Examples** demonstrating practical use cases.

## 🗂 Repository Structure

```text
.
├── docs/                  # Documentation files
│   ├── pwsh/               # PowerShell Cmdlet Docs
│   │   ├── tutorial/       # PowerShell tutorials
|   |   └── ...
|   ├── _config.yml             # Jekyll site configuration
|   └── index.md                # Homepage content
└── README.md               # This file
```

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
