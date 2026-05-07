# 포트폴리오 세팅 — 처음부터 끝까지

"내 컴퓨터에 아무것도 없는 상태"에서 시작해서
`https://<내핸들>.github.io/` 에 사이트가 뜨는 것까지 한 번에 정리한 문서입니다.

소요 시간: **15\~20분** (계정/Git이 이미 있으면 5\~10분)

---

## STEP 0. 사전 준비물

### 0-1. 계정

- **GitHub 계정** — 없으면 [github.com](https://github.com) 에서 가입.
  포트폴리오 도메인이 `<핸들>.github.io` 가 되니까 핸들은 신중하게.
  추천: 본명 기반 (예: `sehwankim`, `sehwan-kim`).

### 0-2. 로컬 도구 설치

| 도구 | 필요 이유 | 확인 명령 |
| --- | --- | --- |
| **Git** | 코드 push | `git --version` |
| **VS Code (또는 다른 에디터)** | placeholder 치환 | — |
| **터미널** | macOS는 Terminal/iTerm, Windows는 PowerShell/Git Bash | — |

설치 안내:
- **macOS**: `git --version` 한 번 치면 Xcode CLI 설치 프롬프트가 뜨고, 거기서 설치하면 됩니다.
- **Windows**: [git-scm.com](https://git-scm.com/download/win) 에서 Git for Windows 설치 → Git Bash 사용 추천.

### 0-3. Git 최초 설정 (한 번만)

```bash
git config --global user.name "Sehwan Kim"
git config --global user.email "he3717@gmail.com"
git config --global init.defaultBranch main
```

---

## STEP 1. 로컬에서 미리보기

GitHub에 올리기 전에 내 화면에서 한 번은 띄워보고 가는 게 안전합니다.

### 1-1. 폴더 위치 확인

현재 파일은 다음 위치에 있습니다:

```
/Users/sehwan/Desktop/job/get_a_job/portfolio/
├── index.html
├── styles.css
├── script.js
├── .nojekyll
├── README.md
└── SETUP.md   ← 지금 보고 있는 문서
```

### 1-2. 정적 서버 띄우기

폴더로 이동한 뒤 (Python은 macOS에 기본 설치돼 있습니다):

```bash
cd "/Users/sehwan/Desktop/job/get_a_job/portfolio"
python3 -m http.server 8000
```

브라우저에서 [http://localhost:8000](http://localhost:8000) 접속.

> `index.html` 더블클릭으로 열어도 보이긴 하지만, 폰트/링크가 일부 다르게 보일 수 있어 정적 서버 사용을 권장합니다.

### 1-3. 모바일 미리보기

크롬에서 `Cmd+Opt+I` → 좌상단 디바이스 토글(`Cmd+Shift+M`) → iPhone/Pixel 등으로 전환해서 가독성 확인.

---

## STEP 2. 내 정보로 Placeholder 치환

이게 사실 가장 중요한 단계입니다. **사이트를 띄우기 전에 끝내는 게 정신 건강에 좋습니다.**

### 2-1. VS Code에서 일괄 검색

```
1. VS Code로 portfolio 폴더 열기
2. Cmd+Shift+F (전체 검색)
3. 검색창에 {{ 입력
4. 좌측에 17개 정도 결과가 나옴 — 하나씩 채우기
```

### 2-2. 치환 체크리스트

아래를 위에서 아래로 채우면 빠짐없이 끝납니다.

#### Hero & Contact

- [ ] `{{RESUME_PDF_URL}}` → 이력서 PDF 링크
  - 옵션 A: 같은 폴더에 `resume.pdf`로 두고 → `./resume.pdf`
  - 옵션 B: Google Drive 공유 링크 (누구나 보기 권한)
- [ ] `{{GITHUB_USERNAME}}` → GitHub 핸들 (3곳에 나옴 — Cmd+D로 모두 선택 후 한 번에 입력)
- [ ] `{{NOTION_OR_PORTFOLIO_URL}}` → Notion 또는 추가 포트폴리오 URL
- [ ] `{{NOTION_OR_LINKEDIN_URL}}` → Notion / LinkedIn URL
- [ ] `{{NOTION_OR_LINKEDIN_HANDLE}}` → 위 링크에 보일 텍스트 (예: `linkedin.com/in/sehwankim`)

#### Featured Project

- [ ] `{{PROJECT_REPO_URL}}` → 프로젝트 GitHub 레포 URL (없으면 `#`)
- [ ] `{{PROJECT_DOC_URL}}` → 아키텍처 다이어그램 / Notion 문서 (없으면 `#`)

#### Research & Publications

논문 1 (KCI 등재, 제1저자):
- [ ] `{{PAPER_1_TITLE}}` — 논문 제목
- [ ] `{{JOURNAL_1_NAME}}` — 학술지명
- [ ] `{{YEAR_1}}` — 연도
- [ ] `{{PAPER_1_SHORT_ABSTRACT}}` — 1\~2줄 요약
- [ ] `{{PAPER_1_URL}}` — DOI / KCI / RISS 링크

논문 2 (KCI 후보, 제2저자):
- [ ] `{{PAPER_2_TITLE}}`, `{{JOURNAL_2_NAME}}`, `{{YEAR_2}}`, `{{PAPER_2_SHORT_ABSTRACT}}`, `{{PAPER_2_URL}}`

#### Awards

- [ ] `{{SECURITY_AWARD_DETAIL}}` — 예: "OO 보안 챌린지 우수상 / KISA / 2021"
- [ ] `{{HACKATHON_AWARD_DETAIL}}` — 예: "OO 해커톤 대상 / OO재단 / 2020"
- [ ] `{{RESEARCH_AWARD_DETAIL}}` — 예: "BoB 우수 프로젝트상 / KITRI / 2021"

> 채울 정보가 정말 없는 항목은 `<li>` 한 줄을 통째로 지우는 게 placeholder를 비워두는 것보다 깔끔합니다.

### 2-3. 검토용 셀프 체크

치환을 끝낸 뒤 한 번 더 검색:

```bash
cd "/Users/sehwan/Desktop/job/get_a_job/portfolio"
grep -n '{{' index.html
```

아무것도 안 나오면 OK.

---

## STEP 3. GitHub 레포 생성

### 3-1. 어떤 형태로 배포할지 결정

| 형태 | 결과 URL | 레포 이름 | 추천 상황 |
| --- | --- | --- | --- |
| **사용자 사이트** | `https://<핸들>.github.io/` | `<핸들>.github.io` | 포트폴리오를 메인으로 쓰고 싶을 때 (추천) |
| **프로젝트 사이트** | `https://<핸들>.github.io/portfolio/` | `portfolio` (자유) | `<핸들>.github.io`을 이미 다른 용도로 쓰는 경우 |

### 3-2. 사용자 사이트 (추천 경로)

1. [github.com/new](https://github.com/new) 접속
2. **Repository name**: `<핸들>.github.io` (반드시 본인 핸들과 동일)
3. **Public** 선택 (Pages 무료 플랜은 Public만 가능)
4. README/Gitignore/License는 모두 **체크하지 않음** (이미 로컬에 파일이 있으므로)
5. **Create repository** 클릭
6. 다음 화면 URL을 복사 (예: `https://github.com/sehwankim/sehwankim.github.io.git`)

---

## STEP 4. 코드 push

터미널에서:

```bash
cd "/Users/sehwan/Desktop/job/get_a_job/portfolio"

# 1) git 초기화
git init

# 2) 모든 파일 추가
git add .

# 3) 첫 커밋
git commit -m "init: portfolio site"

# 4) 브랜치 이름 main으로
git branch -M main

# 5) 원격 저장소 연결 — URL은 STEP 3에서 복사한 것
git remote add origin https://github.com/<핸들>/<핸들>.github.io.git

# 6) push
git push -u origin main
```

> 처음 push할 때 GitHub가 인증을 요구합니다.
> macOS는 보통 브라우저 OAuth 창이 뜨고, 그게 안 뜨면
> [GitHub → Settings → Developer settings → Personal access tokens (classic)](https://github.com/settings/tokens) 에서 PAT 발급 → 비밀번호 자리에 붙여넣기.

---

## STEP 5. GitHub Pages 활성화

사용자 사이트(`<핸들>.github.io`)는 push만 해도 자동으로 활성화됩니다.
혹시 안 켜져 있으면:

1. 레포 → **Settings** 탭 → 좌측 **Pages**
2. **Build and deployment**:
   - Source: **Deploy from a branch**
   - Branch: **main** / **/ (root)**
   - **Save**
3. 30초\~2분 후 상단에 `Your site is live at https://<핸들>.github.io/` 표시
4. 새 탭에서 접속 → 끝.

> 첫 배포는 종종 5분까지 걸립니다. 뜨지 않으면 **Actions** 탭에서 "pages build and deployment" 워크플로의 상태를 확인.

---

## STEP 6. 이후 수정 / 업데이트 워크플로

내용이 바뀔 때마다 반복할 흐름:

```bash
cd "/Users/sehwan/Desktop/job/get_a_job/portfolio"

# 1) 파일 수정 (VS Code 등)

# 2) 변경 내역 확인
git status

# 3) 스테이지 + 커밋 + push
git add .
git commit -m "update: experience 섹션에 OO 추가"
git push
```

push 후 **30초\~1분** 안에 자동 재배포됩니다.

브라우저가 캐시를 잡고 있으면 보이지 않을 수 있으니
강력 새로고침: **Cmd+Shift+R** (mac) / **Ctrl+F5** (win).

---

## STEP 7. (선택) 이력서 PDF 붙이기

가장 흔한 후속 작업입니다.

```bash
# resume.pdf 파일을 portfolio 폴더에 복사
cp ~/Downloads/resume.pdf "/Users/sehwan/Desktop/job/get_a_job/portfolio/"
```

`index.html`에서 `{{RESUME_PDF_URL}}` 위치를 `./resume.pdf` 로 두 군데 다 바꾸기.
다시 push하면 끝.

```bash
cd "/Users/sehwan/Desktop/job/get_a_job/portfolio"
git add resume.pdf index.html
git commit -m "add: resume.pdf"
git push
```

이후 사이트의 **Resume** 버튼 / Contact의 **View resume** 링크가 PDF를 바로 띄웁니다.

---

## STEP 8. (선택) 커스텀 도메인 연결

`example.dev` 같은 본인 도메인이 있다면:

1. 도메인 등록기관(Cloudflare, Namecheap, 가비아 등)에서 DNS 설정:
   - `A` 레코드 4개를 GitHub Pages IP로:
     - `185.199.108.153`
     - `185.199.109.153`
     - `185.199.110.153`
     - `185.199.111.153`
   - 또는 서브도메인이면 `CNAME` 으로 `<핸들>.github.io`
2. portfolio 폴더에 `CNAME` 파일 (확장자 없음) 생성:
   ```
   example.dev
   ```
3. push 후 **Settings → Pages → Custom domain**에 도메인 입력 → **Save**
4. DNS 전파 후 **Enforce HTTPS** 체크박스 활성화 (자동 인증서 발급)

---

## 자주 막히는 지점 (Troubleshooting)

### "사이트는 떴는데 빈 화면이거나 스타일이 깨져요"

- F12 → **Console** 탭의 빨간 에러 확인
- 가장 흔한 원인 2가지:
  - 프로젝트 사이트(`/portfolio/`)인데 `<link href="styles.css">`가 절대경로처럼 동작 → 현재 코드는 상대경로라 문제 없지만, 하위 폴더로 옮긴 경우 다시 확인
  - 한국에서 jsDelivr CDN 일시 차단 → 폰트만 fallback으로 떨어지고 사이트는 정상 동작

### "git push에서 Authentication failed"

- macOS 키체인이 옛날 토큰을 기억 중일 수 있음
- 해결: [PAT 새로 발급](https://github.com/settings/tokens) → `repo` 권한 체크 → push 시 비밀번호 자리에 토큰 붙여넣기
- 또는 [GitHub CLI](https://cli.github.com/) 설치 후 `gh auth login`

### "Pages 활성화했는데 404"

- 사용자 사이트는 `<핸들>.github.io` **레포 이름이 정확히 일치**해야 함 (대소문자 주의)
- 활성화 직후 5분까지 빌드 시간 필요 — Actions 탭에서 빌드 로그 확인

### "Pretendard 폰트가 안 떠요"

- jsDelivr 응답이 느리면 시스템 폰트로 잠깐 fallback. 페이지 새로고침 시 정상.
- 완전히 차단된 환경이라면 `index.html`의 `<link>`를 [Pretendard 공식 호스팅](https://github.com/orioncactus/pretendard) 가이드로 교체.

### "내 정보를 GitHub에 올리기 좀 그래요"

- 이메일은 [GitHub Settings → Emails → Keep my email addresses private](https://github.com/settings/emails) 활성화 후 noreply 이메일 사용 권장
- 그러나 포트폴리오 본문에는 연락처가 보여야 의미가 있으니, 본문 이메일은 그대로 두는 게 일반적

---

## 체크리스트 한 장 요약

```
[ ] STEP 0   GitHub 계정 / Git 설치 / git config
[ ] STEP 1   python3 -m http.server 8000 으로 로컬 미리보기
[ ] STEP 2   {{...}} 17개 모두 치환  (grep -n '{{' index.html → 0건)
[ ] STEP 3   <핸들>.github.io 레포 생성 (Public)
[ ] STEP 4   git init → add → commit → push
[ ] STEP 5   Settings → Pages 자동 활성화 확인
[ ] STEP 6   수정 시 git add / commit / push 반복
[ ] STEP 7   resume.pdf 추가 (선택)
[ ] STEP 8   커스텀 도메인 연결 (선택)
```

여기까지 완주하면 사이트가 살아있고, 이후엔 push만 하면 됩니다.
