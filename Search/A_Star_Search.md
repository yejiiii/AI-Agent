# A* Search

A-Star Search (**에이스타 탐색**)

## A* Search 구현 실습

주어진 코드에 맞춰 코드를 작성하고 실행해보세요.

- (1) 가장 왼쪽에 있는 State를 X에 할당
    - hint: pop()
- (2) X와 GOAL이 같을 때를 표현
- (3) children에 X의 자식노드들을 할당
    - graph의 구조를 참고하세요.
- (4) closed에 X를 추가
- (5) f를 update
    - f = g + h
- (6) open_list에 포함되지 않은 각 child를 추가
- (7) open_list를 재정렬
	- hint: sorted_children을 참조

## Code

- [A_Star_Search.ipynb](./A_Star_Search.ipynb)
- [A_Star_Search.html](./A_Star_Search.html)

## Solution

- [Solution](./Solutions/A_Star_Search.ipynb)