# Sehwan Kim — DevOps / Cloud / Platform Portfolio

DevOps · Cloud · Platform Engineer with Security Background.
GitHub Pages 배포용 단일 페이지 포트폴리오.

---

## 1. 파일 구조

```
portfolio/
├── index.html       # 본문 (모든 섹션)
├── styles.css       # 디자인 시스템 + 섹션 스타일
├── script.js        # 모바일 nav, 스크롤 스파이, 푸터 연도
├── .nojekyll        # GitHub Pages가 Jekyll 처리하지 않도록 비활성화
└── README.md
```

빌드 도구 / 의존성 없음. 순수 HTML / CSS / Vanilla JS.
한글 가독성을 위해 Pretendard 가변 웹폰트를 CDN으로 불러옵니다.

---

## 2. 로컬 실행 방법

`index.html`을 브라우저로 바로 열어도 동작하지만,
`fetch` / 폰트 캐시 등을 정상 검증하려면 정적 서버가 좋습니다.

### 옵션 A — Python (별도 설치 불필요)

```bash
cd portfolio
python3 -m http.server 8000
# http://localhost:8000 접속
```

### 옵션 B — Node (npx)

```bash
cd portfolio
npx serve .
```

### 옵션 C — VS Code

`Live Server` 확장 설치 후 `index.html` 우클릭 → **Open with Live Server**.

---

## 3. GitHub Pages 배포 방법

가장 단순한 두 가지 옵션 중 하나를 선택하세요.

### 옵션 A — 사용자(또는 조직) 사이트: `username.github.io`

가장 깔끔한 URL을 원하면 이 방식이 좋습니다.

```bash
# 1) 새 레포 생성: GitHub에서 username.github.io 라는 이름으로 생성
#    (username을 본인 GitHub 핸들로 교체)

# 2) 로컬에서 push
cd portfolio
git init
git add .
git commit -m "init: portfolio"
git branch -M main
git remote add origin https://github.com/<username>/<username>.github.io.git
git push -u origin main
```

**Settings → Pages**에서 `Branch: main / root` 가 자동 선택돼 있으면 됩니다.
1\~2분 후 `https://<username>.github.io` 에서 확인 가능.

### 옵션 B — 프로젝트 사이트: `username.github.io/portfolio`

기존 GitHub 계정에 단순 추가하고 싶다면:

```bash
cd portfolio
git init
git add .
git commit -m "init: portfolio"
git branch -M main
git remote add origin https://github.com/<username>/portfolio.git
git push -u origin main
```

GitHub 레포 페이지에서:
**Settings → Pages → Build and deployment**
- Source: **Deploy from a branch**
- Branch: **main** / **/ (root)**
- Save

배포 URL: `https://<username>.github.io/portfolio/`

> `.nojekyll` 파일이 포함돼 있어 Jekyll 빌드 단계 없이 정적 파일이 그대로 서빙됩니다.

### 커스텀 도메인을 사용하는 경우

`portfolio/CNAME` 파일을 만들고 도메인 한 줄을 적은 뒤 push하세요.

```
example.com
```

---

## 4. 수정해야 할 Placeholder 목록

`index.html`에서 아래 토큰을 본인 정보로 교체하세요.
(에디터 전체 검색·치환 추천: `Cmd/Ctrl + Shift + F`)

### Hero / Contact 공통

| 토큰 | 의미 | 위치 |
| --- | --- | --- |
| `{{RESUME_PDF_URL}}` | 이력서 PDF 링크 (예: `./resume.pdf` 또는 Drive 공유 링크) | Hero, Contact |
| `{{GITHUB_USERNAME}}` | GitHub 핸들 (예: `sehwankim`) | Hero, Contact |
| `{{NOTION_OR_PORTFOLIO_URL}}` | Notion 또는 추가 포트폴리오 페이지 | Hero |
| `{{NOTION_OR_LINKEDIN_URL}}` | Notion 또는 LinkedIn URL | Contact |
| `{{NOTION_OR_LINKEDIN_HANDLE}}` | 위 링크의 표시 텍스트 | Contact |

> 이메일은 이미 `he3717@gmail.com`로 박혀 있습니다. 변경 필요 시 `mailto:`와 Contact 섹션 두 곳을 함께 수정하세요.

### Featured Project

| 토큰 | 의미 |
| --- | --- |
| `{{PROJECT_REPO_URL}}` | 프로젝트 GitHub 레포 |
| `{{PROJECT_DOC_URL}}` | 아키텍처 다이어그램 / 상세 문서 (Notion, GitBook 등) |

### Research & Publications

논문 1 (KCI 등재, 제1저자):

| 토큰 | 의미 |
| --- | --- |
| `{{PAPER_1_TITLE}}` | 논문 제목 |
| `{{JOURNAL_1_NAME}}` | 학술지명 |
| `{{YEAR_1}}` | 게재 연도 |
| `{{PAPER_1_SHORT_ABSTRACT}}` | 1\~2줄 요약 |
| `{{PAPER_1_URL}}` | DOI / KCI / RISS 링크 |

논문 2 (KCI 후보, 제2저자):

| 토큰 | 의미 |
| --- | --- |
| `{{PAPER_2_TITLE}}` | 논문 제목 |
| `{{JOURNAL_2_NAME}}` | 학술지명 |
| `{{YEAR_2}}` | 게재 연도 |
| `{{PAPER_2_SHORT_ABSTRACT}}` | 1\~2줄 요약 |
| `{{PAPER_2_URL}}` | 링크 |

### Awards (Activities 섹션 내부)

| 토큰 | 의미 |
| --- | --- |
| `{{SECURITY_AWARD_DETAIL}}` | 보안 관련 수상 — 대회명 / 주최 / 연도 |
| `{{HACKATHON_AWARD_DETAIL}}` | 해커톤 수상 — 대회명 / 주최 / 연도 |
| `{{RESEARCH_AWARD_DETAIL}}` | 연구·프로젝트 수상 — 명칭 / 주최 / 연도 |

> 교내 장학금 / 성적우수 / 코로나19 특별장학금은 의도적으로 이름만 짧게 언급하고 강조하지 않았습니다 (Activities 섹션 마지막 `acc__note`).
> 완전히 빼고 싶다면 해당 `<p class="acc__note">...</p>` 한 줄을 삭제하세요.

---

## 5. 디자인 메모 (수정 시 참고)

- **포지셔닝 우선순위**: Hero → Strengths → Featured Project → Work Experience 순서로 직무 적합성이 먼저 노출됩니다. 섹션 순서를 바꾸지 않는 것을 추천합니다.
- **시각적 비중**: Featured Project가 가장 큰 카드, 경력은 타임라인 + 4분면 카드, 자격증은 보안/일반을 좌우로 분리해 정보보안기사·ISO27001을 강조했습니다.
- **컬러 토큰**은 `:root`에 모여있습니다. `--accent` (teal-700) 한 줄만 바꿔도 전체 톤을 변경할 수 있습니다.
- **배지**는 `.badge` 클래스 하나로 통일. 강조하고 싶은 항목에만 `badge--accent` 추가 (예: Featured Project의 `Teleport CE`).
- **애니메이션**은 hover 시 1px 이동·약한 그림자만. `prefers-reduced-motion`도 처리되어 있어 접근성 OK.
- **모바일**: 880px 이하에서 nav가 햄버거로 전환, 그리드는 단일 컬럼으로 떨어집니다.

### 폰트 변경하고 싶다면

`index.html`의 Pretendard `<link>` 한 줄을 교체하고, `styles.css`의 `--font-sans`만 바꾸면 됩니다.

### 다크 모드

현재 라이트 톤만 정의되어 있습니다. 다크 모드가 필요하면 `:root` 토큰을 `@media (prefers-color-scheme: dark)`로 한 번 더 선언하면 됩니다 — 본문은 토큰만 사용하므로 색상값 한 곳만 바꾸면 전체가 따라옵니다.

---

## 라이선스

본 포트폴리오 코드는 자유롭게 수정/사용해도 됩니다.
콘텐츠(이력·경력·논문 등)는 본인(김세환)에게 귀속됩니다.
