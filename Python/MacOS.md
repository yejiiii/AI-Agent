# Python - MacOS 설치

파이썬 3.6 설치

## HomeBrew 설치

- HomeBrew란 MacOS의 대표적인 패키지 매니져입니다.
- 리눅스의 apt 명령어를 자주 보셨을 텐데 동일한 역할을 해준다고 생각하시면 됩니다.

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "export PATH=/usr/local/bin:/usr/local/sbin:$PATH" >> ~/.profile
source ~/.profile
```
- HomeBrew를 업데이트

```
brew update
```

## Python3 설치

- HomeBrew를 통한 Python3 설치

```
brew install python3
```

## 설치 확인

- Terminal Command를 통해 Python 버전 확인

```shell
python -V
> Python 3.6.6
```