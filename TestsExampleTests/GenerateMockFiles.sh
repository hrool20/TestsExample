# Define output file. Change "${PROJECT_DIR}/${PROJECT_NAME}Tests" to your test's root source folder, if it's not the default name.
OUTPUT_FILE="${PROJECT_DIR}/${PROJECT_NAME}Tests/GeneratedMocks.swift"
echo "Generated Mocks File = ${OUTPUT_FILE}"

# Define input directory. Change "${PROJECT_DIR}/${PROJECT_NAME}" to your project's root source folder, if it's not the default name.
INPUT_DIR="${PROJECT_DIR}/${PROJECT_NAME}"

# Generate mock files, include as many input files as you'd like to create mocks for.
"${PROJECT_DIR}/cuckoo-run" --download generate --testable "${PROJECT_NAME}" \
--output "${OUTPUT_FILE}" \
--no-timestamp \
"${INPUT_DIR}/AppModules/Coupon/Data/DataSource/CouponRemoteDataSource.swift" \
"${INPUT_DIR}/AppModules/Coupon/Data/Mapper/CouponDataMapper.swift" \
"${INPUT_DIR}/AppModules/Coupon/Data/Repository/CouponRepository.swift" \
"${INPUT_DIR}/AppModules/Coupon/Domain/Mapper/CouponDomainMapper.swift" \
"${INPUT_DIR}/AppModules/Core/Data/LocalStorage/LocalStorage.swift" \
"${INPUT_DIR}/AppModules/Core/Data/Network/NetworkManager.swift" \
"${INPUT_DIR}/AppModules/Core/Domain/UseCase/AnyClosureUseCase.swift" \
"${INPUT_DIR}/AppModules/Core/Domain/UseCase/AnyUseCase.swift" \
"${INPUT_DIR}/AppModules/Core/Utils/NotificationCenterWrapper.swift" \
"${INPUT_DIR}/AppModules/Product/Data/DataSource/ProductRemoteDataSource.swift" \
"${INPUT_DIR}/AppModules/Product/Data/Mapper/ProductDataMapper.swift" \
"${INPUT_DIR}/AppModules/Product/Data/Repository/ProductRepository.swift" \
"${INPUT_DIR}/AppModules/Product/Domain/Mapper/ProductDomainMapper.swift" \
"${INPUT_DIR}/AppModules/Product/Presentation/Mapper/ProductPresentationMapper.swift"
