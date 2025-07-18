import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct BlogWebsite: Publish.Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: githubPagesAddress)!
    var name = githubProfileName
    var description = "Weekly Episodes"
    var language: Language { .korean }
    var imagePath: Path? { nil }
    var favicon: Favicon? { .init(path: "images/favicon.svg", type: "image/svg+xml") }
}

// This will generate your website using the built-in Foundation theme:
try BlogWebsite().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .blogWebsiteTheme),
    .generateRSSFeed(including: [.posts]),
    .generateSiteMap(),
    .deploy(using: .gitHub(githubDeployAddress, useSSH: false))
])
