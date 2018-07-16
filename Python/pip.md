# pip (패키지 관리자)

pip는 파이썬으로 작성된 패키지 소프트웨어를 설치 및 관리하는 패키지 관리 시스템 이다.

Python Package Index (PyPI)에서 많은 파이썬 패키지를 찾을 수 있다. 

파이썬 2.7.9 이후 버전과 파이썬 3.4 이후 버전은 pip를 기본적으로 포함한다.

## 명령 줄 인터페이스

- pip의 주요 장점은 명령 줄 인터페이스에서의 쉬운 사용이다. 파이썬 소프트웨어 패키지를 한번의 명령실행으로 설치할 수 있다.

```
pip install some-package-name
```

- 패키지 제거 또한 쉽게 실행할 수 있다:

```
pip uninstall some-package-name
```

## 설치

- pip 패키지 업그레이드
```
python -m pip install --upgrade pip
```

- Tesnflow 설치
```
pip install tensorflow
```

- 기타 실습에 필요한 패키지 목록 (설치 필요)
	- sklearn
	- sklearn_utils
	- numpy
	- pandas
	- matplotlib
	- jupyter

## 참조

- [pip - 위키백과](https://ko.wikipedia.org/wiki/Pip_(%ED%8C%A8%ED%82%A4%EC%A7%80_%EA%B4%80%EB%A6%AC%EC%9E%90))
- [PyPI](https://pypi.org/)
- [Github - pip](https://github.com/pypa/pip)