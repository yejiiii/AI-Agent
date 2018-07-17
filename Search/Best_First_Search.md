# Best First Search

최선 우선 탐색

## Best First Search 구현 실습

주어진 코드에 맞춰 코드를 작성하고 실행해보세요.

- (1) 가장 왼쪽에 있는 State를 X에 할당
    - hint: pop()
- (2) X와 GOAL이 같을 때를 표현
- (3) children에 X의 자식노드들을 할당
    - graph의 구조를 참고하세요.
- (4) sorted_children의 각 child마다 반복문 실행
	- for - in문 사용
- (5) closed에 X를 추가
    - hint: extend()
- (6) open_list를 재정렬
	- hint: sorted_children을 참조

## Code

- [Best_First_Search](./Best_First_Search.html)