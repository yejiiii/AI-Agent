# Python - Linux 설치

파이썬 3.6 설치

## 패키지 매니저를 통한 설치

- 일반적인 경우

```
$ sudo apt-get update
$ sudo apt-get install python3.6
```

- 업데이트가 얼마 되지 않은 최신 버전의 경우, 다음과 같은 방법을 권장합니다.
```
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt-get update
$ sudo apt-get install python3.6
```

## 설치 확인

- Terminal Command를 통해 Python 버전 확인

```shell
$ python -V
> Python 3.6.6
```