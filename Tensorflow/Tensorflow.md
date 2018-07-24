# Tensorflow

## 개요

Tensorflow는 구글이 2011년에 개발을 시작하여 2015년에 오픈 소스로 공개한 기계학습 라이브러리이다.

최근 10여 년간 딥러닝 분야에서 중요한 개발을 담당해온 대부분의 연구자들(제프리 힌튼, 사미 벤지오 외 다수)로 구성된 구글 브레인 팀(Google Brarin Team)에 의해 시작되었다.

딥러닝과 기계학습 분야를 일반인들도 사용하기 쉽도록 다양한 기능들을 제공한다. 2016년 알파고와 함께 한국에서도 관심이 높아진 추세이며 관련 컨퍼런스들이 개최되고 있다.

하이 레벨 프로그래밍 언어로 알려진 Python을 활용하여 연산처리를 작성할 수 있다. 다른 언어들도 대부분 지원하지만 Python 관련 자료가 가장 많다. 때문에 공개된 지 그리 오래되지 않았음에도 불구하고 텐서플로우가 다양한 분야에서 활용되고 있다.

Theano와 유사하게 Tensorflow는  텐서(tensors)에 대한 기호 연산으로 동작한다. 즉, 이는 대부분의 연산이 벡터와 행렬의 곱을 기반으로 한다는 것을 의미한다.

## 특징 및 응용분야

### 특징
Tensorflow는 다음과 같은 특징을 지닌다

- 다수의 GPU로 (수평) 병렬 처리가 가능하다.
- 모바일용 개발 프레임워크로도 사용 가능하다.
- TensorBoard: 데이터 플로우 그래프를 통한 풍부한 표현력을 지닌다.
- Python/C++/Go/Java를 지원하며, SWIG를 통해 다양한 언어 지원한다.
- 계산 구조와 목표 함수만 정의하면 자동으로 미분 계산을 처리한다.


### 응용분야

- 아이디어 테스트에서 서비스 단계까지 이용 가능하다.
- 스파크(Spark)와 구글 클라우드 플랫폰(Google Cloud Patform)과 같은 대규모 솔루션을 위한 통합 환경을 제공한다.

### 코드 수정 없이 CPU/GPU 모드로 동작

공개된 버전은 일반 버전과 GPU 가속 버전 두 가지이다. 일반 버전은 어떤 컴퓨터에서든 실행할 수 있다는 장점이 있다.

GPU 가속 버전은 GPGPU를 사용해 대량 연산을 빠르게 수행하므로 훨씬 빠르게 동작하게 된다. 현재 NVIDIA의 GPGPU 언어인 CUDA를 사용하기 때문에 NVIDIA 그래픽카드가 없으면 사용할 수 없다. GPU 가속 버전의 성능은 CPU 성능과는 별 관계가 없고 GPU 성능이 중요하다. 복잡한 프로그램을 몇 시간째 실행하는 와중에도 CPU 사용량은 절반 이하에 불과하다. CUDA 드라이버와 cuDNN 드라이버를 추가적으로 설치하여야 한다.

그 외에 구글이 자사 서비스를 위해 내부적으로 사용하고 있는 버전도 있는데, 이것은 구글이 자체개발한 AI 가속 하드웨어인 TPU(Tensor Processing Unit) 위에서 동작하기 때문에 인텔 제온이나 엔비디아 테슬라보다도 15~30배 더 빠르다.

## 참고

### 사이트
- [Tensorflow 공식사이트](https://www.tensorflow.org/)
- [Tensorflow 나무위키](https://namu.wiki/w/%ED%85%90%EC%84%9C%ED%94%8C%EB%A1%9C%EC%9A%B0)
- [김성훈 교수의 딥 러닝 강좌](http://hunkim.github.io/ml/)
- [텐서플로우 코리아](https://tensorflow.blog/)
- [Udacity Deep Learning](https://www.udacity.com/course/deep-learning--ud730)
- [Awesome Tensorflow](https://github.com/jtoy/awesome-tensorflow)
- [Awesome Tensorflow Implementations](https://github.com/TensorFlowKR/awesome_tensorflow_implementations)
- [Tensorflow 한글 문서](https://tensorflowkorea.gitbooks.io/tensorflow-kr/content/)
- [Tensorflow 튜토리얼](https://github.com/golbin/TensorFlow-Tutorials)

### 문헌
- [파이썬으로 배우는 대규모 머신 러닝](https://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791161750224)
- [Hands-On Machine Learning with Scikit-Learn and TensorFlow: Concepts, Tools, and Techniques to Build Intelligent Systems](https://www.amazon.com/Hands-Machine-Learning-Scikit-Learn-TensorFlow/dp/1491962291/)
- [Introduction to Machine Learning with Python: A Guide for Data Scientists](https://www.amazon.com/Introduction-Machine-Learning-Python-Scientists/dp/1449369413/)
- [골빈 해커의 3분 딥러닝 텐서플로맛](http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9791162240137&orderClick=LAG&Kc=)

### 응용사례
- [시각장애인을 위한 이미지 설명 프로그램](http://itsckr.tistory.com/m/entry/%EA%B0%9C%EB%B0%9C%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A82016-%EC%8B%9C%EA%B0%81%EC%9E%A5%EC%95%A0%EC%9D%B8%EC%9D%84-%EC%9C%84%ED%95%9C-%EC%9D%B4%EB%AF%B8%EC%A7%80-%EC%84%A4%EB%AA%85-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8-%EA%B0%9C%EB%B0%9C)
- [텐서플로우로 만든 오이 품종 자동 분류 기계](http://www.newsweek.com/artificial-intelligence-cucumber-farm-raspberry-pi-495289?rx=us)
- [텐서플로우로 만든 주식 시장 예측 프로그램](https://nicholastsmith.wordpress.com/2016/04/20/stock-market-prediction-using-multi-layer-perceptrons-with-tensorflow/)

