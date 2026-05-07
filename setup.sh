#!/usr/bin/env bash
# ----------------------------------------------------------------------------
# Sehwan Kim — Portfolio Setup
# 본인 터미널에서 이 파일을 실행하면 git init 부터 push 직전까지 끝납니다.
# 사용법:
#   cd "/Users/sehwan/Desktop/job/get_a_job/portfolio"
#   bash setup.sh
# ----------------------------------------------------------------------------
set -e

GH_USER="CisThard"
REPO_NAME="${GH_USER}.github.io"
REMOTE_URL="https://github.com/${GH_USER}/${REPO_NAME}.git"

echo "==> Working dir: $(pwd)"
[ -f "index.html" ] || { echo "ERROR: portfolio 폴더에서 실행하세요."; exit 1; }

# 1) 이전에 샌드박스가 만들었던 깨진 .git 정리
if [ -d ".git" ]; then
  echo "==> Removing previous .git directory"
  rm -rf .git
fi

# 2) git init
echo "==> git init"
git init -b main

# 3) 커밋 ID에 쓸 사용자 정보 (이 레포 한정으로 설정)
git config user.name  "Sehwan Kim"
git config user.email "he3717@gmail.com"

# 4) 첫 커밋
echo "==> staging files"
git add .
git status --short

echo "==> creating initial commit"
git commit -m "init: portfolio site

DevOps / Cloud / Platform Engineer portfolio
- single-page, responsive, no build step
- ready for GitHub Pages deployment"

# 5) 원격 연결 (push는 일부러 실행하지 않습니다 — 인증/레포 생성 확인 후 직접)
echo "==> setting remote: ${REMOTE_URL}"
git remote add origin "${REMOTE_URL}"
git remote -v

cat <<'NEXT'

============================================================
다음 단계 (수동 — 1번만)
============================================================

1) GitHub에서 빈 레포 생성
   - 접속: https://github.com/new
   - Repository name: CisThard.github.io  (정확히 이 이름)
   - Public 선택
   - README / .gitignore / License 모두 체크 해제
   - Create repository

2) 같은 폴더에서 push
   git push -u origin main

   처음이면 인증 창이 뜹니다.
   - macOS Keychain 연동되어 있으면 브라우저 OAuth로 끝.
   - 아니면 Personal Access Token (PAT) 발급:
     https://github.com/settings/tokens (classic, repo 권한)
     비밀번호 자리에 PAT 붙여넣기.

3) GitHub Pages 활성화 확인
   - 보통 push 후 자동으로 켜집니다.
   - 안 켜져 있으면: Settings → Pages
       Source: Deploy from a branch
       Branch: main / (root)
       Save
   - 1~2분 후 https://cisthard.github.io/ 접속

============================================================
NEXT
