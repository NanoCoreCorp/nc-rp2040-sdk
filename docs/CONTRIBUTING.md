# Commites
## Read!
- Commits must comply with the project's commit message format. **Non-compliant** commits **will be rejected**.
-  **All** commits must be made to the `dev` branch. Commits to the `main` branch **will be rejected.**

## Commit message style
```code
<type>(<scope>): <short description>

<detailed description>
```

### Type:
**Defines the category of the change.** 

For example:
- **feat**: new functionality for the user
- **fix**: bug fix for the user
- **docs**: documentation changes
- **style**: style fixes
- **refactor**: code changes that do not fix bugs or add new features
- **test**: add or change tests
- **chore**: changes to build or support files

### Scope:
- **Specifies the component or module of the project that the change applies to.**

### Short description:
- **Very briefly describes the changes in the commit. Should be one sentence and clearly identify the changes.**

### Detailed description:
- **A more detailed description of the changes if the short description is not informative enough.**


## Commit message examples
### New functionality added:
#### feat(auth): added support for OAuth2 authentication
- Added new endpoints for working with OAuth2
- Updated user data models
- Fixed bugs when updating tokens

### Bug fixes:

#### fix(validation): fixed email address validation error

- Fixed a bug with incorrect character verification in email
- Added new tests to check validation

### Documentation changes:

#### docs(readme): updated project description in README

- Added information about installation requirements
- Updated usage examples

---

*This file belongs to the `nc-rp2040-sdk` project by NanoCoreCorp and is licensed under the `MIT License.`*