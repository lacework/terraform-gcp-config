# v3.2.4

## Other Changes
* chore(RAIN-94708): Increase wait_time to fix GCP Config Folder support (#109) (Tim Jin)([3406a17](https://github.com/lacework/terraform-gcp-config/commit/3406a17d32545f2900017af867b28d296a52314a))
* ci: version bump to v3.2.4-dev (Lacework)([5478c7e](https://github.com/lacework/terraform-gcp-config/commit/5478c7e1db5428d76e5f42669e69a102380bd335))
---
# v3.2.3

## Other Changes
* ci: version bump to v3.2.3-dev (Lacework)([861315d](https://github.com/lacework/terraform-gcp-config/commit/861315d19a719140930249f8d7089e6657ffef46))
---
# v3.2.2

## Bug Fixes
* fix: use correct roles when folders_to_include is set (#104) (Pengyuan Zhao)([1ba6a68](https://github.com/lacework/terraform-gcp-config/commit/1ba6a684e9a9260e14af34b7f18eeeb5d985347e))
## Other Changes
* ci: version bump to v3.2.2-dev (Lacework)([3ff9cae](https://github.com/lacework/terraform-gcp-config/commit/3ff9cae777c8c692d96bad7b4777c84ea510786b))
---
# v3.2.1

## Other Changes
* ci: version bump to v3.2.1-dev (Lacework)([e141fd2](https://github.com/lacework/terraform-gcp-config/commit/e141fd292490b9fbfff93ea0f747b6ec8885e44f))
---
# v3.2.0

## Features
* feat: add policyanalyzer.activityAnalysisViewer (#99) (hazedav)([b52b22f](https://github.com/lacework/terraform-gcp-config/commit/b52b22f4248bd26d2d104066963e942062376967))
## Other Changes
* chore(GROW-2952): add codeowners (#98) (Matt Cadorette)([2e52c0a](https://github.com/lacework/terraform-gcp-config/commit/2e52c0a102994e40915d0066a14a91a7d88db3cf))
* ci: version bump to v3.1.1-dev (Lacework)([1756476](https://github.com/lacework/terraform-gcp-config/commit/175647656c7851df6ea2fb49e17ff16e095bc06b))
---
# v3.1.0

## Features
* feat(GROW-2928): Add an output to capture Lacework integration GUID (#96) (Lei Jin)([3f7f3d8](https://github.com/lacework/terraform-gcp-config/commit/3f7f3d87ff5fa3e4b96435652a00d0b1097150d3))
## Bug Fixes
* fix: remove google provider version in examples (#93) (Matt Cadorette)([c0c0fc7](https://github.com/lacework/terraform-gcp-config/commit/c0c0fc73e11a2761078cf8c50264bb8a290f337d))
## Other Changes
* ci: migrate from codefresh to github actions (#92) (Timothy MacDonald)([3e52279](https://github.com/lacework/terraform-gcp-config/commit/3e5227998bb1a1417d520920ffe391560aa51c55))
* ci: version bump to v3.0.3-dev (Lacework)([b2934fd](https://github.com/lacework/terraform-gcp-config/commit/b2934fd7b3194e582e3290f784c4348a2bf2c4b6))
---
# v3.0.2

## Other Changes
* chore: set local var module name (#90) (Darren)([6071d14](https://github.com/lacework/terraform-gcp-config/commit/6071d1401b012ed057118344b854f8c5a7719083))
* ci: version bump to v3.0.2-dev (Lacework)([cda5e94](https://github.com/lacework/terraform-gcp-config/commit/cda5e94129de2ef1398cb1ecf3cde7da1896c41b))
---
# v3.0.1

## Other Changes
* chore: add lacework_metric_module datasource (#88) (Darren)([4255e04](https://github.com/lacework/terraform-gcp-config/commit/4255e044c47e4ae2c29df1e386b551c40a64d1f1))
* ci: version bump to v3.0.1-dev (Lacework)([73f3276](https://github.com/lacework/terraform-gcp-config/commit/73f32765984a5ddcd73a0f8687fd55f46999ece0))
---
# v3.0.0

## Refactor
* refactor: allows upgrading the google provider to 5.x (#84) (Laurent Raufaste)([aca6da9](https://github.com/lacework/terraform-gcp-config/commit/aca6da9bb5535b30428c0c578d244cd6204e6105))
## Documentation Updates
* docs(readme): add terraform docs automation (#83) (Timothy MacDonald)([6deaa09](https://github.com/lacework/terraform-gcp-config/commit/6deaa09a07e12ea61102bcf2283211daacae2e56))
* docs: multi project (#80) (jonathan stewart)([ec5f4d4](https://github.com/lacework/terraform-gcp-config/commit/ec5f4d48aff8458e11d7e7adc129efc10d14797f))
## Other Changes
* chore: major version bump to 3.0.0 (#86) (Salim Afiune)([1c07b99](https://github.com/lacework/terraform-gcp-config/commit/1c07b9908ee9e4a2c670998a2a255e12950941bd))
* ci: tfsec (jon-stewart)([1db3163](https://github.com/lacework/terraform-gcp-config/commit/1db316373b0e5e3a191a47bade24d6b45d191903))
* ci: version bump to v2.4.4-dev (Lacework)([2f81f83](https://github.com/lacework/terraform-gcp-config/commit/2f81f8327109653b70b8fa188ba015b01ee1bc9e))
---
# v2.4.3

## Bug Fixes
* fix: avoid asking for project_id when is not needed (#77) (Salim Afiune)([756f541](https://github.com/lacework/terraform-gcp-config/commit/756f5410df337abeb91099e6e25c02f08e189bf6))
## Other Changes
* ci: version bump to v2.4.3-dev (Lacework)([e1f5d51](https://github.com/lacework/terraform-gcp-config/commit/e1f5d51d7dba5df7ed6dbc9a115cd5b66b064516))
---
# v2.4.2

## Bug Fixes
* fix: empty project_id in google_project data source (#75) (Salim Afiune)([976ac9d](https://github.com/lacework/terraform-gcp-config/commit/976ac9dc1af46197c7eb2100ec12adf6abe3aa4b))
## Other Changes
* ci: version bump to v2.4.2-dev (Lacework)([6456f16](https://github.com/lacework/terraform-gcp-config/commit/6456f1681a37dfc74907d4ae7c62fc17d6cad887))
---
# v2.4.1

## Documentation Updates
* docs: update Lacework provider version in readme (#73) (Darren)([c80417b](https://github.com/lacework/terraform-gcp-config/commit/c80417b5d981c9ead3485604313a4d1ee22a152a))
* docs: add project_id to project level example (lacework-aaronscheiber)([1cc6799](https://github.com/lacework/terraform-gcp-config/commit/1cc67990b229611bdeee51a3926a43d77cf3cd50))
## Other Changes
* chore: update Lacework provider version to v1 (#72) (Darren)([3ea15e5](https://github.com/lacework/terraform-gcp-config/commit/3ea15e5f9bc3d0937572d01c1f010e9430199638))
* ci: version bump to v2.4.1-dev (Lacework)([2248ded](https://github.com/lacework/terraform-gcp-config/commit/2248ded8ac0012730f875e2f83c4e29851f32ef2))
---
# v2.4.0

## Features
* feat: add skip iam grants flag (#68) (Mike Laramie)([13f8e71](https://github.com/lacework/terraform-gcp-config/commit/13f8e71ced7c3fa6c4a043d9f91ca60a688790dd))
## Other Changes
* ci: version bump to v2.3.1-dev (Lacework)([b904c5c](https://github.com/lacework/terraform-gcp-config/commit/b904c5cb8f5d81a270caa68f64b9d70193eb5623))
---
# v2.3.0

## Features
* feat(api): Enable api essentialcontacts.googleapis.com api (#60) (Irwin Kennedy)([a4cd69c](https://github.com/lacework/terraform-gcp-config/commit/a4cd69ceb3a8b7430489fd16a5231c6811571b6d))
## Other Changes
* ci: version bump to v2.2.1-dev (Lacework)([fdaa034](https://github.com/lacework/terraform-gcp-config/commit/fdaa03449e26de26f805463e75c38bccb08a341a))
---
# v2.2.0

## Features
* feat: adding folder inclusion (#62) (Mike Laramie)([6c3a53c](https://github.com/lacework/terraform-gcp-config/commit/6c3a53c9257645e1456501121662555bf2887872))
## Bug Fixes
* fix: Folder onboarding depends on custom role (#65) (Salim Afiune)([0fdbebd](https://github.com/lacework/terraform-gcp-config/commit/0fdbebdf19877e1244dbe6c6cb20f717b34084f7))
## Other Changes
* ci: version bump to v2.1.2-dev (Lacework)([cb264a8](https://github.com/lacework/terraform-gcp-config/commit/cb264a87ab916386e434e605820c260114b1dc61))
---
# v2.1.1

## Bug Fixes
* fix(variable): project id regex to match constraint (#63) (Salim Afiune)([c33ff5d](https://github.com/lacework/terraform-gcp-config/commit/c33ff5d3a45f005a1259bd9f5482ec81585be6a5))
## Other Changes
* ci: version bump to v2.1.1-dev (Lacework)([c6982a7](https://github.com/lacework/terraform-gcp-config/commit/c6982a76c938205a2f131037eb44c4ce99acb259))
---
# v2.1.0

## Features
* feat: Add project id variable validation (#56) (Tim Arenz)([7fc3857](https://github.com/lacework/terraform-gcp-config/commit/7fc38579f36a78f89a55d422b2b4a91708334936))
## Bug Fixes
* fix: updated project role logic to respect include_root_projects (#58) (Michael Droessler)([11ae8f6](https://github.com/lacework/terraform-gcp-config/commit/11ae8f6fcf8a5a5ab36335c5ffa639b3af182bc7))
## Other Changes
* ci: version bump to v2.0.1-dev (Lacework)([1723350](https://github.com/lacework/terraform-gcp-config/commit/172335020105230a36718288532b0effc1245344))
---
# v2.0.0

## Features
* feat: add folder exclusions (#54) (Mike Laramie)([588d400](https://github.com/lacework/terraform-gcp-config/commit/588d400a9e4194cbc02b6dfec20c6a81b80cbd0d))
## Other Changes
* ci: version bump to v1.5.1-dev (Lacework)([6e885dc](https://github.com/lacework/terraform-gcp-config/commit/6e885dc31582e8faa54863a638fcdfc711e11535))
---
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
