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




