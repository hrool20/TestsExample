// MARK: - Mocks generated from file: TestsExample/AppModules/Core/Data/LocalStorage/LocalStorage.swift
//
//  LocalStorage.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 18/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockLocalStorage: LocalStorage, Cuckoo.ProtocolMock {
    
     typealias MocksType = LocalStorage
    
     typealias Stubbing = __StubbingProxy_LocalStorage
     typealias Verification = __VerificationProxy_LocalStorage

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: LocalStorage?

     func enableDefaultImplementation(_ stub: LocalStorage) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func save<T: Encodable>(_ value: T?, key: String)  {
        
    return cuckoo_manager.call(
    """
    save(_: T?, key: String)
    """,
            parameters: (value, key),
            escapingParameters: (value, key),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.save(value, key: key))
        
    }
    
    
    
    
    
     func load<T: Decodable>(key: String) -> T? {
        
    return cuckoo_manager.call(
    """
    load(key: String) -> T?
    """,
            parameters: (key),
            escapingParameters: (key),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.load(key: key))
        
    }
    
    
    
    
    
     func delete(key: String) -> Bool {
        
    return cuckoo_manager.call(
    """
    delete(key: String) -> Bool
    """,
            parameters: (key),
            escapingParameters: (key),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.delete(key: key))
        
    }
    
    
    
    
    
     func contains(key: String) -> Bool {
        
    return cuckoo_manager.call(
    """
    contains(key: String) -> Bool
    """,
            parameters: (key),
            escapingParameters: (key),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.contains(key: key))
        
    }
    
    

     struct __StubbingProxy_LocalStorage: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func save<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable, T: Encodable>(_ value: M1, key: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(T?, String)> where M1.OptionalMatchedType == T, M2.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(T?, String)>] = [wrap(matchable: value) { $0.0 }, wrap(matchable: key) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockLocalStorage.self, method:
    """
    save(_: T?, key: String)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func load<M1: Cuckoo.Matchable, T: Decodable>(key: M1) -> Cuckoo.ProtocolStubFunction<(String), T?> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockLocalStorage.self, method:
    """
    load(key: String) -> T?
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func delete<M1: Cuckoo.Matchable>(key: M1) -> Cuckoo.ProtocolStubFunction<(String), Bool> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockLocalStorage.self, method:
    """
    delete(key: String) -> Bool
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func contains<M1: Cuckoo.Matchable>(key: M1) -> Cuckoo.ProtocolStubFunction<(String), Bool> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockLocalStorage.self, method:
    """
    contains(key: String) -> Bool
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_LocalStorage: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func save<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable, T: Encodable>(_ value: M1, key: M2) -> Cuckoo.__DoNotUse<(T?, String), Void> where M1.OptionalMatchedType == T, M2.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(T?, String)>] = [wrap(matchable: value) { $0.0 }, wrap(matchable: key) { $0.1 }]
            return cuckoo_manager.verify(
    """
    save(_: T?, key: String)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func load<M1: Cuckoo.Matchable, T: Decodable>(key: M1) -> Cuckoo.__DoNotUse<(String), T?> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
            return cuckoo_manager.verify(
    """
    load(key: String) -> T?
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func delete<M1: Cuckoo.Matchable>(key: M1) -> Cuckoo.__DoNotUse<(String), Bool> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
            return cuckoo_manager.verify(
    """
    delete(key: String) -> Bool
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func contains<M1: Cuckoo.Matchable>(key: M1) -> Cuckoo.__DoNotUse<(String), Bool> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: key) { $0 }]
            return cuckoo_manager.verify(
    """
    contains(key: String) -> Bool
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class LocalStorageStub: LocalStorage {
    

    

    
    
    
    
     func save<T: Encodable>(_ value: T?, key: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func load<T: Decodable>(key: String) -> T?  {
        return DefaultValueRegistry.defaultValue(for: (T?).self)
    }
    
    
    
    
    
     func delete(key: String) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
    
    
    
    
     func contains(key: String) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Core/Data/Network/NetworkManager.swift
//
//  NetworkManager.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 20/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockNetworkManager: NetworkManager, Cuckoo.ProtocolMock {
    
     typealias MocksType = NetworkManager
    
     typealias Stubbing = __StubbingProxy_NetworkManager
     typealias Verification = __VerificationProxy_NetworkManager

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NetworkManager?

     func enableDefaultImplementation(_ stub: NetworkManager) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func request<T, E>(count: Int, _ get: @escaping (Int) -> T, _ onCompletion: @escaping (CaseResult<[T], E>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    request(count: Int, _: @escaping (Int) -> T, _: @escaping (CaseResult<[T], E>) -> Void)
    """,
            parameters: (count, get, onCompletion),
            escapingParameters: (count, get, onCompletion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.request(count: count, get, onCompletion))
        
    }
    
    

     struct __StubbingProxy_NetworkManager: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func request<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, T, E>(count: M1, _ get: M2, _ onCompletion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(Int, (Int) -> T, (CaseResult<[T], E>) -> Void)> where M1.MatchedType == Int, M2.MatchedType == (Int) -> T, M3.MatchedType == (CaseResult<[T], E>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Int) -> T, (CaseResult<[T], E>) -> Void)>] = [wrap(matchable: count) { $0.0 }, wrap(matchable: get) { $0.1 }, wrap(matchable: onCompletion) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockNetworkManager.self, method:
    """
    request(count: Int, _: @escaping (Int) -> T, _: @escaping (CaseResult<[T], E>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_NetworkManager: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func request<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, T, E>(count: M1, _ get: M2, _ onCompletion: M3) -> Cuckoo.__DoNotUse<(Int, (Int) -> T, (CaseResult<[T], E>) -> Void), Void> where M1.MatchedType == Int, M2.MatchedType == (Int) -> T, M3.MatchedType == (CaseResult<[T], E>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(Int, (Int) -> T, (CaseResult<[T], E>) -> Void)>] = [wrap(matchable: count) { $0.0 }, wrap(matchable: get) { $0.1 }, wrap(matchable: onCompletion) { $0.2 }]
            return cuckoo_manager.verify(
    """
    request(count: Int, _: @escaping (Int) -> T, _: @escaping (CaseResult<[T], E>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class NetworkManagerStub: NetworkManager {
    

    

    
    
    
    
     func request<T, E>(count: Int, _ get: @escaping (Int) -> T, _ onCompletion: @escaping (CaseResult<[T], E>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Core/Domain/UseCase/AnyClosureUseCase.swift
//
//  AnyClosureUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockAnyClosureUseCase<RQ, RS, E>: AnyClosureUseCase<RQ, RS, E>, Cuckoo.ClassMock {
    
     typealias MocksType = AnyClosureUseCase<RQ, RS, E>
    
     typealias Stubbing = __StubbingProxy_AnyClosureUseCase
     typealias Verification = __VerificationProxy_AnyClosureUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: AnyClosureUseCase<RQ, RS, E>?

     func enableDefaultImplementation(_ stub: AnyClosureUseCase<RQ, RS, E>) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func execute(_ parameters: RQ, _ onCompletion: @escaping (CaseResult<RS, E>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    execute(_: RQ, _: @escaping (CaseResult<RS, E>) -> Void)
    """,
            parameters: (parameters, onCompletion),
            escapingParameters: (parameters, onCompletion),
            superclassCall:
                
                super.execute(parameters, onCompletion)
                ,
            defaultCall: __defaultImplStub!.execute(parameters, onCompletion))
        
    }
    
    

     struct __StubbingProxy_AnyClosureUseCase: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func execute<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ parameters: M1, _ onCompletion: M2) -> Cuckoo.ClassStubNoReturnFunction<(RQ, (CaseResult<RS, E>) -> Void)> where M1.MatchedType == RQ, M2.MatchedType == (CaseResult<RS, E>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(RQ, (CaseResult<RS, E>) -> Void)>] = [wrap(matchable: parameters) { $0.0 }, wrap(matchable: onCompletion) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAnyClosureUseCase.self, method:
    """
    execute(_: RQ, _: @escaping (CaseResult<RS, E>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_AnyClosureUseCase: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func execute<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ parameters: M1, _ onCompletion: M2) -> Cuckoo.__DoNotUse<(RQ, (CaseResult<RS, E>) -> Void), Void> where M1.MatchedType == RQ, M2.MatchedType == (CaseResult<RS, E>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(RQ, (CaseResult<RS, E>) -> Void)>] = [wrap(matchable: parameters) { $0.0 }, wrap(matchable: onCompletion) { $0.1 }]
            return cuckoo_manager.verify(
    """
    execute(_: RQ, _: @escaping (CaseResult<RS, E>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class AnyClosureUseCaseStub<RQ, RS, E>: AnyClosureUseCase<RQ, RS, E> {
    

    

    
    
    
    
     override func execute(_ parameters: RQ, _ onCompletion: @escaping (CaseResult<RS, E>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Core/Domain/UseCase/AnyUseCase.swift
//
//  AnyUseCase.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockAnyUseCase<RQ, RS, E>: AnyUseCase<RQ, RS, E>, Cuckoo.ClassMock {
    
     typealias MocksType = AnyUseCase<RQ, RS, E>
    
     typealias Stubbing = __StubbingProxy_AnyUseCase
     typealias Verification = __VerificationProxy_AnyUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: AnyUseCase<RQ, RS, E>?

     func enableDefaultImplementation(_ stub: AnyUseCase<RQ, RS, E>) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func execute(_ parameters: RQ) -> CaseResult<RS, E> {
        
    return cuckoo_manager.call(
    """
    execute(_: RQ) -> CaseResult<RS, E>
    """,
            parameters: (parameters),
            escapingParameters: (parameters),
            superclassCall:
                
                super.execute(parameters)
                ,
            defaultCall: __defaultImplStub!.execute(parameters))
        
    }
    
    

     struct __StubbingProxy_AnyUseCase: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func execute<M1: Cuckoo.Matchable>(_ parameters: M1) -> Cuckoo.ClassStubFunction<(RQ), CaseResult<RS, E>> where M1.MatchedType == RQ {
            let matchers: [Cuckoo.ParameterMatcher<(RQ)>] = [wrap(matchable: parameters) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAnyUseCase.self, method:
    """
    execute(_: RQ) -> CaseResult<RS, E>
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_AnyUseCase: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func execute<M1: Cuckoo.Matchable>(_ parameters: M1) -> Cuckoo.__DoNotUse<(RQ), CaseResult<RS, E>> where M1.MatchedType == RQ {
            let matchers: [Cuckoo.ParameterMatcher<(RQ)>] = [wrap(matchable: parameters) { $0 }]
            return cuckoo_manager.verify(
    """
    execute(_: RQ) -> CaseResult<RS, E>
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class AnyUseCaseStub<RQ, RS, E>: AnyUseCase<RQ, RS, E> {
    

    

    
    
    
    
     override func execute(_ parameters: RQ) -> CaseResult<RS, E>  {
        return DefaultValueRegistry.defaultValue(for: (CaseResult<RS, E>).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Core/Utils/NotificationCenterWrapper.swift
//
//  NotificationCenterWrapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 17/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockNotificationCenterWrapper: NotificationCenterWrapper, Cuckoo.ProtocolMock {
    
     typealias MocksType = NotificationCenterWrapper
    
     typealias Stubbing = __StubbingProxy_NotificationCenterWrapper
     typealias Verification = __VerificationProxy_NotificationCenterWrapper

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: NotificationCenterWrapper?

     func enableDefaultImplementation(_ stub: NotificationCenterWrapper) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func post(name aName: NSNotification.Name, object anObject: Any?)  {
        
    return cuckoo_manager.call(
    """
    post(name: NSNotification.Name, object: Any?)
    """,
            parameters: (aName, anObject),
            escapingParameters: (aName, anObject),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.post(name: aName, object: anObject))
        
    }
    
    
    
    
    
     func post(name aName: NSNotification.Name, object anObject: Any?, userInfo aUserInfo: [AnyHashable: Any]?)  {
        
    return cuckoo_manager.call(
    """
    post(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable: Any]?)
    """,
            parameters: (aName, anObject, aUserInfo),
            escapingParameters: (aName, anObject, aUserInfo),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.post(name: aName, object: anObject, userInfo: aUserInfo))
        
    }
    
    
    
    
    
     func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)  {
        
    return cuckoo_manager.call(
    """
    addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)
    """,
            parameters: (observer, selector, name, object),
            escapingParameters: (observer, selector, name, object),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.addObserver(observer, selector: selector, name: name, object: object))
        
    }
    
    
    
    
    
     func removeObserver(_ observer: Any, name: NSNotification.Name?, object: Any?)  {
        
    return cuckoo_manager.call(
    """
    removeObserver(_: Any, name: NSNotification.Name?, object: Any?)
    """,
            parameters: (observer, name, object),
            escapingParameters: (observer, name, object),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.removeObserver(observer, name: name, object: object))
        
    }
    
    

     struct __StubbingProxy_NotificationCenterWrapper: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func post<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(name aName: M1, object anObject: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(NSNotification.Name, Any?)> where M1.MatchedType == NSNotification.Name, M2.OptionalMatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(NSNotification.Name, Any?)>] = [wrap(matchable: aName) { $0.0 }, wrap(matchable: anObject) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterWrapper.self, method:
    """
    post(name: NSNotification.Name, object: Any?)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func post<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable>(name aName: M1, object anObject: M2, userInfo aUserInfo: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(NSNotification.Name, Any?, [AnyHashable: Any]?)> where M1.MatchedType == NSNotification.Name, M2.OptionalMatchedType == Any, M3.OptionalMatchedType == [AnyHashable: Any] {
            let matchers: [Cuckoo.ParameterMatcher<(NSNotification.Name, Any?, [AnyHashable: Any]?)>] = [wrap(matchable: aName) { $0.0 }, wrap(matchable: anObject) { $0.1 }, wrap(matchable: aUserInfo) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterWrapper.self, method:
    """
    post(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable: Any]?)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func addObserver<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(_ observer: M1, selector: M2, name: M3, object: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(Any, Selector, NSNotification.Name?, Any?)> where M1.MatchedType == Any, M2.MatchedType == Selector, M3.OptionalMatchedType == NSNotification.Name, M4.OptionalMatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(Any, Selector, NSNotification.Name?, Any?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: selector) { $0.1 }, wrap(matchable: name) { $0.2 }, wrap(matchable: object) { $0.3 }]
            return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterWrapper.self, method:
    """
    addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func removeObserver<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable>(_ observer: M1, name: M2, object: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(Any, NSNotification.Name?, Any?)> where M1.MatchedType == Any, M2.OptionalMatchedType == NSNotification.Name, M3.OptionalMatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(Any, NSNotification.Name?, Any?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: name) { $0.1 }, wrap(matchable: object) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockNotificationCenterWrapper.self, method:
    """
    removeObserver(_: Any, name: NSNotification.Name?, object: Any?)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_NotificationCenterWrapper: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func post<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(name aName: M1, object anObject: M2) -> Cuckoo.__DoNotUse<(NSNotification.Name, Any?), Void> where M1.MatchedType == NSNotification.Name, M2.OptionalMatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(NSNotification.Name, Any?)>] = [wrap(matchable: aName) { $0.0 }, wrap(matchable: anObject) { $0.1 }]
            return cuckoo_manager.verify(
    """
    post(name: NSNotification.Name, object: Any?)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func post<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable>(name aName: M1, object anObject: M2, userInfo aUserInfo: M3) -> Cuckoo.__DoNotUse<(NSNotification.Name, Any?, [AnyHashable: Any]?), Void> where M1.MatchedType == NSNotification.Name, M2.OptionalMatchedType == Any, M3.OptionalMatchedType == [AnyHashable: Any] {
            let matchers: [Cuckoo.ParameterMatcher<(NSNotification.Name, Any?, [AnyHashable: Any]?)>] = [wrap(matchable: aName) { $0.0 }, wrap(matchable: anObject) { $0.1 }, wrap(matchable: aUserInfo) { $0.2 }]
            return cuckoo_manager.verify(
    """
    post(name: NSNotification.Name, object: Any?, userInfo: [AnyHashable: Any]?)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func addObserver<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable, M4: Cuckoo.OptionalMatchable>(_ observer: M1, selector: M2, name: M3, object: M4) -> Cuckoo.__DoNotUse<(Any, Selector, NSNotification.Name?, Any?), Void> where M1.MatchedType == Any, M2.MatchedType == Selector, M3.OptionalMatchedType == NSNotification.Name, M4.OptionalMatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(Any, Selector, NSNotification.Name?, Any?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: selector) { $0.1 }, wrap(matchable: name) { $0.2 }, wrap(matchable: object) { $0.3 }]
            return cuckoo_manager.verify(
    """
    addObserver(_: Any, selector: Selector, name: NSNotification.Name?, object: Any?)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func removeObserver<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable, M3: Cuckoo.OptionalMatchable>(_ observer: M1, name: M2, object: M3) -> Cuckoo.__DoNotUse<(Any, NSNotification.Name?, Any?), Void> where M1.MatchedType == Any, M2.OptionalMatchedType == NSNotification.Name, M3.OptionalMatchedType == Any {
            let matchers: [Cuckoo.ParameterMatcher<(Any, NSNotification.Name?, Any?)>] = [wrap(matchable: observer) { $0.0 }, wrap(matchable: name) { $0.1 }, wrap(matchable: object) { $0.2 }]
            return cuckoo_manager.verify(
    """
    removeObserver(_: Any, name: NSNotification.Name?, object: Any?)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class NotificationCenterWrapperStub: NotificationCenterWrapper {
    

    

    
    
    
    
     func post(name aName: NSNotification.Name, object anObject: Any?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func post(name aName: NSNotification.Name, object anObject: Any?, userInfo aUserInfo: [AnyHashable: Any]?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func removeObserver(_ observer: Any, name: NSNotification.Name?, object: Any?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Coupon/Data/DataSource/CouponRemoteDataSource.swift
//
//  CouponRemoteDataSource.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockCouponRemoteDataSource: CouponRemoteDataSource, Cuckoo.ProtocolMock {
    
     typealias MocksType = CouponRemoteDataSource
    
     typealias Stubbing = __StubbingProxy_CouponRemoteDataSource
     typealias Verification = __VerificationProxy_CouponRemoteDataSource

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CouponRemoteDataSource?

     func enableDefaultImplementation(_ stub: CouponRemoteDataSource) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func fetchCoupons(_ onCompletion: @escaping (CaseResult<[ApiCoupon], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    fetchCoupons(_: @escaping (CaseResult<[ApiCoupon], Error>) -> Void)
    """,
            parameters: (onCompletion),
            escapingParameters: (onCompletion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchCoupons(onCompletion))
        
    }
    
    

     struct __StubbingProxy_CouponRemoteDataSource: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetchCoupons<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((CaseResult<[ApiCoupon], Error>) -> Void)> where M1.MatchedType == (CaseResult<[ApiCoupon], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[ApiCoupon], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockCouponRemoteDataSource.self, method:
    """
    fetchCoupons(_: @escaping (CaseResult<[ApiCoupon], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_CouponRemoteDataSource: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetchCoupons<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.__DoNotUse<((CaseResult<[ApiCoupon], Error>) -> Void), Void> where M1.MatchedType == (CaseResult<[ApiCoupon], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[ApiCoupon], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return cuckoo_manager.verify(
    """
    fetchCoupons(_: @escaping (CaseResult<[ApiCoupon], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class CouponRemoteDataSourceStub: CouponRemoteDataSource {
    

    

    
    
    
    
     func fetchCoupons(_ onCompletion: @escaping (CaseResult<[ApiCoupon], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Coupon/Data/Mapper/CouponDataMapper.swift
//
//  CouponDataMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockCouponDataMapper: CouponDataMapper, Cuckoo.ProtocolMock {
    
     typealias MocksType = CouponDataMapper
    
     typealias Stubbing = __StubbingProxy_CouponDataMapper
     typealias Verification = __VerificationProxy_CouponDataMapper

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CouponDataMapper?

     func enableDefaultImplementation(_ stub: CouponDataMapper) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func dataToDomain(_ value: [ApiCoupon]) -> [DomainCoupon] {
        
    return cuckoo_manager.call(
    """
    dataToDomain(_: [ApiCoupon]) -> [DomainCoupon]
    """,
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.dataToDomain(value))
        
    }
    
    

     struct __StubbingProxy_CouponDataMapper: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func dataToDomain<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubFunction<([ApiCoupon]), [DomainCoupon]> where M1.MatchedType == [ApiCoupon] {
            let matchers: [Cuckoo.ParameterMatcher<([ApiCoupon])>] = [wrap(matchable: value) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockCouponDataMapper.self, method:
    """
    dataToDomain(_: [ApiCoupon]) -> [DomainCoupon]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_CouponDataMapper: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func dataToDomain<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<([ApiCoupon]), [DomainCoupon]> where M1.MatchedType == [ApiCoupon] {
            let matchers: [Cuckoo.ParameterMatcher<([ApiCoupon])>] = [wrap(matchable: value) { $0 }]
            return cuckoo_manager.verify(
    """
    dataToDomain(_: [ApiCoupon]) -> [DomainCoupon]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class CouponDataMapperStub: CouponDataMapper {
    

    

    
    
    
    
     func dataToDomain(_ value: [ApiCoupon]) -> [DomainCoupon]  {
        return DefaultValueRegistry.defaultValue(for: ([DomainCoupon]).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Coupon/Data/Repository/CouponRepository.swift
//
//  CouponRepository.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockCouponRepository: CouponRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = CouponRepository
    
     typealias Stubbing = __StubbingProxy_CouponRepository
     typealias Verification = __VerificationProxy_CouponRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CouponRepository?

     func enableDefaultImplementation(_ stub: CouponRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func fetchCoupons(_ onCompletion: @escaping (CaseResult<[DomainCoupon], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    fetchCoupons(_: @escaping (CaseResult<[DomainCoupon], Error>) -> Void)
    """,
            parameters: (onCompletion),
            escapingParameters: (onCompletion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchCoupons(onCompletion))
        
    }
    
    

     struct __StubbingProxy_CouponRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetchCoupons<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((CaseResult<[DomainCoupon], Error>) -> Void)> where M1.MatchedType == (CaseResult<[DomainCoupon], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[DomainCoupon], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockCouponRepository.self, method:
    """
    fetchCoupons(_: @escaping (CaseResult<[DomainCoupon], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_CouponRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetchCoupons<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.__DoNotUse<((CaseResult<[DomainCoupon], Error>) -> Void), Void> where M1.MatchedType == (CaseResult<[DomainCoupon], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[DomainCoupon], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return cuckoo_manager.verify(
    """
    fetchCoupons(_: @escaping (CaseResult<[DomainCoupon], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class CouponRepositoryStub: CouponRepository {
    

    

    
    
    
    
     func fetchCoupons(_ onCompletion: @escaping (CaseResult<[DomainCoupon], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Coupon/Domain/Mapper/CouponDomainMapper.swift
//
//  CouponDomainMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockCouponDomainMapper: CouponDomainMapper, Cuckoo.ProtocolMock {
    
     typealias MocksType = CouponDomainMapper
    
     typealias Stubbing = __StubbingProxy_CouponDomainMapper
     typealias Verification = __VerificationProxy_CouponDomainMapper

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CouponDomainMapper?

     func enableDefaultImplementation(_ stub: CouponDomainMapper) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func domainToPresentation(_ value: [DomainCoupon]) -> [UiCoupon] {
        
    return cuckoo_manager.call(
    """
    domainToPresentation(_: [DomainCoupon]) -> [UiCoupon]
    """,
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.domainToPresentation(value))
        
    }
    
    

     struct __StubbingProxy_CouponDomainMapper: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func domainToPresentation<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubFunction<([DomainCoupon]), [UiCoupon]> where M1.MatchedType == [DomainCoupon] {
            let matchers: [Cuckoo.ParameterMatcher<([DomainCoupon])>] = [wrap(matchable: value) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockCouponDomainMapper.self, method:
    """
    domainToPresentation(_: [DomainCoupon]) -> [UiCoupon]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_CouponDomainMapper: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func domainToPresentation<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<([DomainCoupon]), [UiCoupon]> where M1.MatchedType == [DomainCoupon] {
            let matchers: [Cuckoo.ParameterMatcher<([DomainCoupon])>] = [wrap(matchable: value) { $0 }]
            return cuckoo_manager.verify(
    """
    domainToPresentation(_: [DomainCoupon]) -> [UiCoupon]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class CouponDomainMapperStub: CouponDomainMapper {
    

    

    
    
    
    
     func domainToPresentation(_ value: [DomainCoupon]) -> [UiCoupon]  {
        return DefaultValueRegistry.defaultValue(for: ([UiCoupon]).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Product/Data/DataSource/ProductRemoteDataSource.swift
//
//  ProductRemoteDataSource.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockProductRemoteDataSource: ProductRemoteDataSource, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProductRemoteDataSource
    
     typealias Stubbing = __StubbingProxy_ProductRemoteDataSource
     typealias Verification = __VerificationProxy_ProductRemoteDataSource

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProductRemoteDataSource?

     func enableDefaultImplementation(_ stub: ProductRemoteDataSource) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func fetchProducts(_ onCompletion: @escaping (CaseResult<[ApiProduct], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    fetchProducts(_: @escaping (CaseResult<[ApiProduct], Error>) -> Void)
    """,
            parameters: (onCompletion),
            escapingParameters: (onCompletion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchProducts(onCompletion))
        
    }
    
    

     struct __StubbingProxy_ProductRemoteDataSource: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetchProducts<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((CaseResult<[ApiProduct], Error>) -> Void)> where M1.MatchedType == (CaseResult<[ApiProduct], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[ApiProduct], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockProductRemoteDataSource.self, method:
    """
    fetchProducts(_: @escaping (CaseResult<[ApiProduct], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_ProductRemoteDataSource: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetchProducts<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.__DoNotUse<((CaseResult<[ApiProduct], Error>) -> Void), Void> where M1.MatchedType == (CaseResult<[ApiProduct], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[ApiProduct], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return cuckoo_manager.verify(
    """
    fetchProducts(_: @escaping (CaseResult<[ApiProduct], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class ProductRemoteDataSourceStub: ProductRemoteDataSource {
    

    

    
    
    
    
     func fetchProducts(_ onCompletion: @escaping (CaseResult<[ApiProduct], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Product/Data/Mapper/ProductDataMapper.swift
//
//  ProductDataMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockProductDataMapper: ProductDataMapper, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProductDataMapper
    
     typealias Stubbing = __StubbingProxy_ProductDataMapper
     typealias Verification = __VerificationProxy_ProductDataMapper

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProductDataMapper?

     func enableDefaultImplementation(_ stub: ProductDataMapper) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func dataToDomain(_ value: [ApiProduct]) -> [DomainProduct] {
        
    return cuckoo_manager.call(
    """
    dataToDomain(_: [ApiProduct]) -> [DomainProduct]
    """,
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.dataToDomain(value))
        
    }
    
    

     struct __StubbingProxy_ProductDataMapper: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func dataToDomain<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubFunction<([ApiProduct]), [DomainProduct]> where M1.MatchedType == [ApiProduct] {
            let matchers: [Cuckoo.ParameterMatcher<([ApiProduct])>] = [wrap(matchable: value) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockProductDataMapper.self, method:
    """
    dataToDomain(_: [ApiProduct]) -> [DomainProduct]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_ProductDataMapper: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func dataToDomain<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<([ApiProduct]), [DomainProduct]> where M1.MatchedType == [ApiProduct] {
            let matchers: [Cuckoo.ParameterMatcher<([ApiProduct])>] = [wrap(matchable: value) { $0 }]
            return cuckoo_manager.verify(
    """
    dataToDomain(_: [ApiProduct]) -> [DomainProduct]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class ProductDataMapperStub: ProductDataMapper {
    

    

    
    
    
    
     func dataToDomain(_ value: [ApiProduct]) -> [DomainProduct]  {
        return DefaultValueRegistry.defaultValue(for: ([DomainProduct]).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Product/Data/Repository/ProductRepository.swift
//
//  ProductRepository.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockProductRepository: ProductRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProductRepository
    
     typealias Stubbing = __StubbingProxy_ProductRepository
     typealias Verification = __VerificationProxy_ProductRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProductRepository?

     func enableDefaultImplementation(_ stub: ProductRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func fetchProducts(_ onCompletion: @escaping (CaseResult<[DomainProduct], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    fetchProducts(_: @escaping (CaseResult<[DomainProduct], Error>) -> Void)
    """,
            parameters: (onCompletion),
            escapingParameters: (onCompletion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchProducts(onCompletion))
        
    }
    
    

     struct __StubbingProxy_ProductRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetchProducts<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((CaseResult<[DomainProduct], Error>) -> Void)> where M1.MatchedType == (CaseResult<[DomainProduct], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[DomainProduct], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockProductRepository.self, method:
    """
    fetchProducts(_: @escaping (CaseResult<[DomainProduct], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_ProductRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetchProducts<M1: Cuckoo.Matchable>(_ onCompletion: M1) -> Cuckoo.__DoNotUse<((CaseResult<[DomainProduct], Error>) -> Void), Void> where M1.MatchedType == (CaseResult<[DomainProduct], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((CaseResult<[DomainProduct], Error>) -> Void)>] = [wrap(matchable: onCompletion) { $0 }]
            return cuckoo_manager.verify(
    """
    fetchProducts(_: @escaping (CaseResult<[DomainProduct], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class ProductRepositoryStub: ProductRepository {
    

    

    
    
    
    
     func fetchProducts(_ onCompletion: @escaping (CaseResult<[DomainProduct], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Product/Domain/Mapper/ProductDomainMapper.swift
//
//  ProductDomainMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockProductDomainMapper: ProductDomainMapper, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProductDomainMapper
    
     typealias Stubbing = __StubbingProxy_ProductDomainMapper
     typealias Verification = __VerificationProxy_ProductDomainMapper

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProductDomainMapper?

     func enableDefaultImplementation(_ stub: ProductDomainMapper) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func domainToPresentation(_ value: [DomainProduct]) -> [UiProduct] {
        
    return cuckoo_manager.call(
    """
    domainToPresentation(_: [DomainProduct]) -> [UiProduct]
    """,
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.domainToPresentation(value))
        
    }
    
    

     struct __StubbingProxy_ProductDomainMapper: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func domainToPresentation<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubFunction<([DomainProduct]), [UiProduct]> where M1.MatchedType == [DomainProduct] {
            let matchers: [Cuckoo.ParameterMatcher<([DomainProduct])>] = [wrap(matchable: value) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockProductDomainMapper.self, method:
    """
    domainToPresentation(_: [DomainProduct]) -> [UiProduct]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_ProductDomainMapper: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func domainToPresentation<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<([DomainProduct]), [UiProduct]> where M1.MatchedType == [DomainProduct] {
            let matchers: [Cuckoo.ParameterMatcher<([DomainProduct])>] = [wrap(matchable: value) { $0 }]
            return cuckoo_manager.verify(
    """
    domainToPresentation(_: [DomainProduct]) -> [UiProduct]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class ProductDomainMapperStub: ProductDomainMapper {
    

    

    
    
    
    
     func domainToPresentation(_ value: [DomainProduct]) -> [UiProduct]  {
        return DefaultValueRegistry.defaultValue(for: ([UiProduct]).self)
    }
    
    
}





// MARK: - Mocks generated from file: TestsExample/AppModules/Product/Presentation/Mapper/ProductPresentationMapper.swift
//
//  ProductPresentationMapper.swift
//  TestsExample
//
//  Created by Hugo A. Rosado on 19/11/23.
//

import Cuckoo
@testable import TestsExample

import Foundation






 class MockProductPresentationMapper: ProductPresentationMapper, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProductPresentationMapper
    
     typealias Stubbing = __StubbingProxy_ProductPresentationMapper
     typealias Verification = __VerificationProxy_ProductPresentationMapper

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProductPresentationMapper?

     func enableDefaultImplementation(_ stub: ProductPresentationMapper) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func map(_ value: [UiProduct]) -> [UiProductItem] {
        
    return cuckoo_manager.call(
    """
    map(_: [UiProduct]) -> [UiProductItem]
    """,
            parameters: (value),
            escapingParameters: (value),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.map(value))
        
    }
    
    

     struct __StubbingProxy_ProductPresentationMapper: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func map<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubFunction<([UiProduct]), [UiProductItem]> where M1.MatchedType == [UiProduct] {
            let matchers: [Cuckoo.ParameterMatcher<([UiProduct])>] = [wrap(matchable: value) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockProductPresentationMapper.self, method:
    """
    map(_: [UiProduct]) -> [UiProductItem]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_ProductPresentationMapper: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func map<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<([UiProduct]), [UiProductItem]> where M1.MatchedType == [UiProduct] {
            let matchers: [Cuckoo.ParameterMatcher<([UiProduct])>] = [wrap(matchable: value) { $0 }]
            return cuckoo_manager.verify(
    """
    map(_: [UiProduct]) -> [UiProductItem]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class ProductPresentationMapperStub: ProductPresentationMapper {
    

    

    
    
    
    
     func map(_ value: [UiProduct]) -> [UiProductItem]  {
        return DefaultValueRegistry.defaultValue(for: ([UiProductItem]).self)
    }
    
    
}




