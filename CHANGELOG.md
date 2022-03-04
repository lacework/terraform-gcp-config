# v1.5.0

## Bug Fixes
* fix: revert "feat: add folder exclusion logic (#48)" (#52) (Salim Afiune)([af2b479](https://github.com/lacework/terraform-gcp-config/commit/af2b479c5670880fbbf322dbd7798e7d560790bd))
## Other Changes
* ci: version bump to v1.4.1-dev (Lacework)([141e688](https://github.com/lacework/terraform-gcp-config/commit/141e6887f4453756884219426466255a3543fb0d))
---
# v1.4.0

## Features
* feat: add folder exclusion logic (#48) (Mike Laramie)([f18b4f9](https://github.com/lacework/terraform-gcp-config/commit/f18b4f9c07371371caa1e5842781d6e290dadaf7))
## Other Changes
* chore: update PR template (#47) (Darren)([a35554f](https://github.com/lacework/terraform-gcp-config/commit/a35554f3e5dc0b4aba883aab32284142f4979c1a))
* ci: user a variable to inject organization_id (#49) (Salim Afiune)([34f14d6](https://github.com/lacework/terraform-gcp-config/commit/34f14d675b30036238aee1079b9a8a30ee791ff9))
* ci: version bump to v1.3.1-dev (Lacework)([2c5aa4c](https://github.com/lacework/terraform-gcp-config/commit/2c5aa4c5713cfad01833b783025a72ec8e9a928a))
---
# v1.3.0

## Features
* feat: allow google provider version >= 3.0.0, < 5.0.0 (#43) (Darren)([f07655d](https://github.com/lacework/terraform-gcp-config/commit/f07655d3c6ca4bc8762406755417d965f3e45dc2))
## Other Changes
* ci: version bump to v1.2.1-dev (Lacework)([95cae17](https://github.com/lacework/terraform-gcp-config/commit/95cae1767ea986efc93d42b230226211e3a04537))
---
# v1.2.0

## Features
* feat: Add 'roles/cloudasset.viewer' to GCP integrations (#44) (Irwin Kennedy)([49cf220](https://github.com/lacework/terraform-gcp-config/commit/49cf2208bcdda1543129190ecfc9af2637b6719b))
## Other Changes
* ci: version bump to v1.1.3-dev (Lacework)([3d42449](https://github.com/lacework/terraform-gcp-config/commit/3d4244961ba0a4182649bcef9baec44ade750353))
---
# v1.1.2

## Other Changes
* chore(examples): Update GCP config module examples (#41) (Ross)([54054c3](https://github.com/lacework/terraform-gcp-config/commit/54054c375571eb167f3ace6f143d71f941434539))
* ci: version bump to v1.1.2-dev (Lacework)([911a0da](https://github.com/lacework/terraform-gcp-config/commit/911a0da1c97c25bb8364297f6fa37af319b13dc6))
---
# v1.1.1

## Bug Fixes
* fix: remove iam.serviceAccountTokenCreator role from ServiceAccount (#37) (Declan Wilson)([d625123](https://github.com/lacework/terraform-gcp-config/commit/d6251234b6180a4f6028ea1b5fc2659ba7f3b405))
## Documentation Updates
* docs: Add contributing documentation (#36) (Darren)([07129ac](https://github.com/lacework/terraform-gcp-config/commit/07129ac7706d2884d3d30b1058735731566c4353))
## Other Changes
* ci: fix pipeline by ignoring terraform.lock.hcl file (#38) (Darren)([aae63f8](https://github.com/lacework/terraform-gcp-config/commit/aae63f837108812b45d41001c10dbb19241819b5))
* ci: version bump to v1.1.1-dev (Lacework)([96272ba](https://github.com/lacework/terraform-gcp-config/commit/96272ba6f8ecb4b1d17191e2ea56cb5d17397a91))
---
# v1.1.0

## Features
* feat: additional ServiceAccount permissions and roles (#34) (Declan Wilson)([326fdb8](https://github.com/lacework/terraform-gcp-config/commit/326fdb8d0cf70555335b2912dee8857e9dc977ab))
## Other Changes
* chore: version bump to v1.0.6-dev (Lacework)([e07451b](https://github.com/lacework/terraform-gcp-config/commit/e07451bb3804f7197411831dbae53389e11807fc))
* ci: sign lacework-releng commits (#33) (Salim Afiune)([3ceeaee](https://github.com/lacework/terraform-gcp-config/commit/3ceeaee569f7e0ca0e448bc05336068d742923ae))
---
# v1.0.5

## Bug Fixes
* fix: missing permissions and custom compliance role IDs (Mike Laramie)([f20e65e](https://github.com/lacework/terraform-gcp-config/commit/f20e65e943578e65032f0aacba01a2bf651d42c1))
## Other Changes
* chore: version bump to v1.0.5-dev (Lacework)([2a52e58](https://github.com/lacework/terraform-gcp-config/commit/2a52e58d1d08001ed39aa71952ddc21604e0b5dd))
---
# v1.0.4

## Other Changes
* chore: version bump to v1.0.4-dev (Lacework)([24aedc6](https://github.com/lacework/terraform-gcp-config/commit/24aedc6b5c7c77d0f0129ad9a29525056b92edbf))
---
# v1.0.3

## Bug Fixes
* fix: create custom lwComplianceRole inside project (#26) (Salim Afiune)([8dd677f](https://github.com/lacework/terraform-gcp-config/commit/8dd677faeff15f7c3d1094b920be8714600b8d58))
## Other Changes
* chore: version bump to v1.0.3-dev (Lacework)([2fadd39](https://github.com/lacework/terraform-gcp-config/commit/2fadd394eced76384dd1c2c2e58543e00fb9a435))
---
# v1.0.2

## Bug Fixes
* fix: support for sensitive values (#18) (mr-menno)([947d587](https://github.com/lacework/terraform-gcp-config/commit/947d58764f9d8951875d80db19edd10fe632da26))
## Other Changes
* chore: bump required version of TF to 0.12.31 (#23) (Scott Ford)([8329ded](https://github.com/lacework/terraform-gcp-config/commit/8329dedd151a9206a800236202ce2a27769d5f48))
* chore: version bump to v1.0.2-dev (Lacework)([851cfd3](https://github.com/lacework/terraform-gcp-config/commit/851cfd3e9e26eff27173bbfc8a21f095e1865d73))
---
# v1.0.1

## Bug Fixes
* fix: Add custom role with required get permissions (#19) (Ross)([024ca13](https://github.com/lacework/terraform-gcp-config/commit/024ca13d093e0c2b7da0cf2b98502b2ddafcac76))
## Other Changes
* chore: version bump to v1.0.1-dev (Lacework)([b3b0dc9](https://github.com/lacework/terraform-gcp-config/commit/b3b0dc9cf31bed7e187ea201a2f0611901d14f37))
* ci: fix finding major versions during release (#21) (Salim Afiune)([5c560bd](https://github.com/lacework/terraform-gcp-config/commit/5c560bdfd59c83938ff0a34f6c8b077d8ad871bd))
---
# v1.0.0

## Refactor
* refactor: Move GCP Config logic from service-account module (#9) (Ross)([82c2277](https://github.com/lacework/terraform-gcp-config/commit/82c22774b13e79520541608979dcdb1c743c420a))
## Other Changes
* chore: bump version to 1.0.0-dev (Ross Moles)([8fae326](https://github.com/lacework/terraform-gcp-config/commit/8fae326b916326133a43c142a8da57ebbad9e66e))
* ci: remove CircleCI completely (#16) (Salim Afiune)([86df93f](https://github.com/lacework/terraform-gcp-config/commit/86df93fe57ab7f642210d0032179134988e38b05))
* ci: switch PR test from CircleCI to CodeFresh (Salim Afiune Maya)([b6fecec](https://github.com/lacework/terraform-gcp-config/commit/b6fecec8e0508ee9b0141daeb1e2a6eff78a5176))
* ci: abstract common release helpers (Salim Afiune Maya)([8696577](https://github.com/lacework/terraform-gcp-config/commit/86965774cee001a3daaf1cfa7572e17003856d47))
* ci: update release commit message (Ross Moles)([1baf2ab](https://github.com/lacework/terraform-gcp-config/commit/1baf2ab1968101acef36e9d9b6514f77467f6796))
* ci: add sleep before bump_version (Ross Moles)([e1df8b3](https://github.com/lacework/terraform-gcp-config/commit/e1df8b334147bf317e5fbd4663027e15de01f342))
* ci: add release_contains_features() & check_for_minor_version_bump() (#12) (Ross)([702ea46](https://github.com/lacework/terraform-gcp-config/commit/702ea4612b63e2e78f16ff0ca6faebe1ab3a3548))
* ci: open release pull request automatically (#10) (Ross)([192c51c](https://github.com/lacework/terraform-gcp-config/commit/192c51cfddf2f6e3d06660b44f61fcbdab70dc68))
* ci: switch releases to be own by Lacework releng ⚡ (#8) (Salim Afiune)([7cf9c90](https://github.com/lacework/terraform-gcp-config/commit/7cf9c909bc885bc71d15932e884875ca6665e9d3))
---
# v0.1.2

## Bug Fixes
* fix: unique suffix added to service account name (#5) (Salim Afiune)([af8df60](https://github.com/lacework/terraform-gcp-config/commit/af8df60f0c64cac795e2b7b18d8dbb54fcdf5bb8))
## Documentation Updates
* docs: update existing-service-account example (#3) (Salim Afiune)([567e31b](https://github.com/lacework/terraform-gcp-config/commit/567e31bb1decd1cfadefaca3398a29d8f7afc7c5))
## Other Changes
* ci: send slack notifications to team alias ⭐ (#4) (Salim Afiune)([5d1cbd6](https://github.com/lacework/terraform-gcp-config/commit/5d1cbd64e8309b5cae10b2e981e77b426bf83493))
---
# v0.1.1

## Other Changes
* chore(version): pessimistic constraint for service-account module (Salim Afiune Maya)([8aa2001](https://github.com/lacework/terraform-gcp-config/commit/8aa20019edfeababfe7a9fd019b89b1b9b39600c))
* ci: improve release notes and changelog generation (Salim Afiune Maya)([7612238](https://github.com/lacework/terraform-gcp-config/commit/7612238d827bf2f37561d6839e7010f20eccb984))
* ci: fix git config commands in release (Salim Afiune Maya)([14e9f89](https://github.com/lacework/terraform-gcp-config/commit/14e9f89a65fd6eee5eff7121fdecbb74cd6fe3ae))
---
# v0.1.0

☀️  Initial commit
