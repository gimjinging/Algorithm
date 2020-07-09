func solution(_ answers:[Int]) -> [Int] {
  // 1) 수포자가 정답을 찍는 패턴을 구분하여 저장
  let mathHaters = [[1, 2, 3, 4, 5], [2, 1, 2, 3, 2, 4, 2, 5], [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]]
  var countArray: [Int] = []
  var result: [Int] = []
  
  for hater in mathHaters {
    var count = 0
    for aIdx in 0..<answers.count {
      var hIdx = 0
      // 2) 수포자 패턴 index 계산
      if aIdx >= hater.count {
        hIdx = aIdx % hater.count
      } else {
        hIdx = aIdx
      }
      
      // 3) 정답일 경우 count 세어주기
      if hater[hIdx] == answers[aIdx] {
        count += 1
      }
    }
    countArray.append(count)
  }
  
  for idx in 0..<mathHaters.count {
    // 4) count가 가장 높은 수포자를 result에 append 해주고 이를 return 해준다
    if countArray[idx] == countArray.max() {
      result.append(idx+1)
    }
  }
  return result
}

solution([1, 2, 3, 4, 5, 5, 4, 3, 2, 1, 1, 2])
