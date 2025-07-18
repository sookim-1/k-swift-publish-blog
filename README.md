![create_post](https://github.com/sookim-1/k-swift-publish-blog/actions/workflows/create_post.yml/badge.svg)
![build-and-deploy](https://github.com/sookim-1/k-swift-publish-blog/actions/workflows/build-and-deploy.yml/badge.svg)

- Launguage : [🇰🇷](./README_KR.md)

![logo](./docs/logo.png)

This repository was created with reference to [ios-osushi's website](https://github.com/ios-osushi/website).
It uses the [Publish](https://github.com/JohnSundell/Publish) library, which helps you conveniently create static websites using the Swift language.

This repository is for a personal blog where I post weekly development retrospectives.

> Example

![sample_website_capture](./docs/sample_website_capture.png)

-   Check out the live website 👉 [sookim-1's Weekly Retrospective](https://sookimblogoriginversion.vercel.app/)
-   Read about the development process (in Korean) 👉 [Blog Development Journey](./docs/blog_development.md)

## How to Customize

You can use this repository to build your own personal T.W.L (Today We Learned) blog.

1.  **Fork** this repository.
2.  Add your Markdown files to the `Content/posts` folder.
3.  Modify the variables in `Global.swift` to match your information.
4.  Open the project in Xcode and build it for "My Mac". An `Output` folder will be generated. Add the contents of this folder to your `username.github.io` repository to complete the hosting.

> Post Markdown Format Example

```markdown
---
date: 2024-01-01 23:00
description: Creating the blog
tags: iOS, Swift
---
# Number: 001, Date: 2024-01-01
```

## How to Run Workflows

### Automatic GitHub Pages Deployment Workflow

1. Add a new Markdown file to the Content/posts folder.
2. When the new commit is merged into the main branch, the build-and-deploy.yml workflow will be triggered.
3. Once the workflow succeeds, the site will be deployed to your username.github.io remote repository.

### Post Creation Workflow
1. Run the create_post.yml workflow manually.
2. You will be prompted to enter a post number, creation date, and the start/end dates for your retrospective. The workflow will then automatically create a new post file and open a Pull Request.
3. Edit the content of the new post, then merge the Pull Request. The blog will be deployed following the automatic deployment steps mentioned above.
