//
//  NetworkManagerImpl.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 20/11/23.
//

import Foundation

final class NetworkManagerImpl: NetworkManager {
    func request<T, E>(
        count: Int,
        _ get: @escaping (Int) -> T,
        _ onCompletion: @escaping (CaseResult<[T], E>) -> Void
    ) {
        let array = dummy(count: count, get)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            onCompletion(.success(data: array))
        }
    }

    private func dummy<T>(count: Int, _ completion: @escaping (Int) -> T) -> [T] {
        let size = (count >= .zero) ? count : .zero
        var array = [T]()
        for i in .zero..<size {
            array.append(completion(i))
        }
        return array
    }
}
