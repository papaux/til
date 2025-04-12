Branching Models
----------------

Some of the most common git branching models:

**Gitflow**

Branches: main for stable releases, develop for ongoing development, feature branches, release branches, and hotfix branches.
Well-suited for projects with regular releases and a more structured development process where several release must be kept in parallel.
Release branches are cut from develop when entering a release cycle, patches can still be applied, and when ready the branched is merged to main to trigger a release (also merged back to develop if changes were applied).

**Feature Branch Workflow**

Branches: main for latest state, feature branches for development.
Each new feature or task gets its own branch.
Feature branches are merged into the main branch (master or develop) when completed.
Simple and suitable for smaller teams or projects with less complex release cycles.

**GitLab Flow**

Branches: develop for ongoing development, feature branches, environment branches for promotion (testing, staging, production, ...)
Similar to the Feature Branch Workflow but primarily focused on Continuous Integration/Continuous Deployment (CI/CD).
Whenever a feature is ready, it is merged to main. Whenever a release is ready, it is merged to staging and then prod branch.

**Trunk-Based Development**

Branches: trunk (main), maybe also short-lived feature branches
All development occurs on a single branch, typically master or main.
Relies heavily on feature toggles, feature flags, and CI/CD practices to manage changes and releases.
Well-suited for teams with senior staff that need a faster release cycle and continuous deployment.

**GitHub Flow**

Branches: main, feature branches.
Simplified workflow emphasizing frequent releases and continous deployment to production.
Similar to the Feature Branch Workflow but with the main branch serving as the primary branch and is always in sync with production.

**Release Flow**

Branches: main, feature branches, release branches (only created when necessary)
Similar to Gitflow but focuses more on releases and hotfixes.
Releases can happen directly from the main branch, but might have additional branches for each release version, making it easier to maintain multiple releases simultaneously.
Each release gets tagged, wherever it comes from.
This allows to get a streamlined release cycle for forward only releases without the overhead of creating / maintaining release branches, but still allows bugfixing by creating release branches
