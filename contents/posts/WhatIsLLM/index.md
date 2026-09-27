---
title: LLM이란?
date: 2026-09-25
update: 2026-09-25
tags:
  - LLM
series: AI
---
## LLM(대규모 언어 모델)
LLM은 방대한 양의 데이터를 학습시켜 기타 유형의 콘텐츠를 이해하고 생성하는 등의 작업을 수행할 수 있는 인공지능 모델입니다.
## LLM의 특징
- **대규모 데이터 학습**: 적게는 테라바이트에서 많게는 페타바이트의 방대한 데이터를 기반으로 학습 진행
- **자연어 처리(NLP)능력**: 인간이 말하거나 쓴 텍스트를 처리하는 능력이 뛰어나 복잡한 문장의 문맥 파악도 가능

## 대표적인 LLM 모델
### 클로즈드 모델 (API로만 사용)
**Claude (Anthropic)**
- 등급별 라인업: Haiku(빠르고 저렴) → Sonnet(균형) → Opus(고성능), 그 위에 Mythos 등급(Fable)
- 코딩, 에이전트 작업, 긴 문서 처리에 강하다는 평가
- 최근 Claude Opus 5.5가 9월 22일 출시됨
- Xcode 27 에이전트 코딩과 Foundation Models 프레임워크에서 바로 연동 가능

**GPT (OpenAI)**
- ChatGPT의 기반 모델. 범용성과 생태계(플러그인, 툴)가 가장 넓음
- 9월 22일 GPT-6 계열(Luna, Sol)이 출시되는 등 세대 교체가 진행 중

**Gemini (Google)**
- 처음부터 텍스트, 이미지, 음성, 영상을 함께 학습한 네이티브 멀티모달이 특징
- Pro(고성능), Deep Think(추론), Flash(빠름), Flash-Lite(경량)로 구성돼 있고, 현재 3.1 Pro와 3.8 Flash 등이 안정 버전
- 차세대 Apple Foundation Models가 Gemini 기반이라는 점도 iOS 개발자에게 의미가 있어요

**Grok (xAI)**
- X(트위터) 데이터 연동, 긴 컨텍스트가 특징

###  오픈 웨이트 모델
- **Llama (Meta)**: 오픈 웨이트 생태계를 연 대표 모델. Llama 4 Scout는 1,000만 토큰이라는 매우 긴 컨텍스트로 알려져 있음
- **Qwen (Alibaba)**: 크기별 라인업이 촘촘하고 다국어(한국어 포함) 성능이 좋아 파인튜닝 베이스로 인기
- **DeepSeek**: 저비용 학습과 추론 모델로 주목받은 중국 모델
- **Kimi (Moonshot)**: 현재 가장 강력한 오픈 웨이트 모델로 Kimi K3가 꼽히고 있음
- **Mistral**: 유럽 대표. 경량 모델부터 대형까지 제공
- **Gemma (Google)**: Gemini 기술 기반의 소형 오픈 모델. 온디바이스 실험용으로 좋음

### 온디바이스 모델
- **Apple Foundation Models**: iOS에 내장된 약 3B 규모 모델. 무료, 오프라인, 프라이버시 보장. iOS 27부터 이미지 입력 지원
- 그 외 Gemma, Qwen, Llama의 소형 버전을 Core AI나 MLX로 변환해 앱에 탑재하는 방식이 흔함
