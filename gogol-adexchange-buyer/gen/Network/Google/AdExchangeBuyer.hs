{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Accesses your bidding-account information, submits creatives for
-- validation, finds available direct deals, and retrieves performance
-- reports.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference>
module Network.Google.AdExchangeBuyer
    (
    -- * API
      AdExchangeBuyerAPI
    , adExchangeBuyerAPI
    , adExchangeBuyerURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdexchangebuyerAccountsGet
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.Get

    -- ** AdexchangebuyerAccountsList
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.List

    -- ** AdexchangebuyerAccountsPatch
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.Patch

    -- ** AdexchangebuyerAccountsUpdate
    , module Network.Google.Resource.AdExchangeBuyer.Accounts.Update

    -- ** AdexchangebuyerBillingInfoGet
    , module Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get

    -- ** AdexchangebuyerBillingInfoList
    , module Network.Google.Resource.AdExchangeBuyer.BillingInfo.List

    -- ** AdexchangebuyerBudgetGet
    , module Network.Google.Resource.AdExchangeBuyer.Budget.Get

    -- ** AdexchangebuyerBudgetPatch
    , module Network.Google.Resource.AdExchangeBuyer.Budget.Patch

    -- ** AdexchangebuyerBudgetUpdate
    , module Network.Google.Resource.AdExchangeBuyer.Budget.Update

    -- ** AdexchangebuyerClientAccessDelete
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete

    -- ** AdexchangebuyerClientAccessGet
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get

    -- ** AdexchangebuyerClientAccessInsert
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Insert

    -- ** AdexchangebuyerClientAccessList
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.List

    -- ** AdexchangebuyerClientAccessPatch
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch

    -- ** AdexchangebuyerClientAccessUpdate
    , module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update

    -- ** AdexchangebuyerCreativesGet
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.Get

    -- ** AdexchangebuyerCreativesInsert
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.Insert

    -- ** AdexchangebuyerCreativesList
    , module Network.Google.Resource.AdExchangeBuyer.Creatives.List

    -- ** AdexchangebuyerDealsGet
    , module Network.Google.Resource.AdExchangeBuyer.Deals.Get

    -- ** AdexchangebuyerMarketplaceDealsDelete
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete

    -- ** AdexchangebuyerMarketplaceDealsInsert
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert

    -- ** AdexchangebuyerMarketplaceDealsList
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List

    -- ** AdexchangebuyerMarketplaceDealsUpdate
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update

    -- ** AdexchangebuyerMarketplaceNotesInsert
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert

    -- ** AdexchangebuyerMarketplaceNotesList
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List

    -- ** AdexchangebuyerMarketplaceOffersGet
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get

    -- ** AdexchangebuyerMarketplaceOffersSearch
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search

    -- ** AdexchangebuyerMarketplaceOrdersGet
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get

    -- ** AdexchangebuyerMarketplaceOrdersInsert
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert

    -- ** AdexchangebuyerMarketplaceOrdersPatch
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch

    -- ** AdexchangebuyerMarketplaceOrdersSearch
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search

    -- ** AdexchangebuyerMarketplaceOrdersUpdate
    , module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update

    -- ** AdexchangebuyerNegotiationRoundsInsert
    , module Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert

    -- ** AdexchangebuyerNegotiationsGet
    , module Network.Google.Resource.AdExchangeBuyer.Negotiations.Get

    -- ** AdexchangebuyerNegotiationsInsert
    , module Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert

    -- ** AdexchangebuyerNegotiationsList
    , module Network.Google.Resource.AdExchangeBuyer.Negotiations.List

    -- ** AdexchangebuyerOffersGet
    , module Network.Google.Resource.AdExchangeBuyer.Offers.Get

    -- ** AdexchangebuyerOffersInsert
    , module Network.Google.Resource.AdExchangeBuyer.Offers.Insert

    -- ** AdexchangebuyerOffersList
    , module Network.Google.Resource.AdExchangeBuyer.Offers.List

    -- ** AdexchangebuyerPerformanceReportList
    , module Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List

    -- ** AdexchangebuyerPretargetingConfigDelete
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete

    -- ** AdexchangebuyerPretargetingConfigGet
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get

    -- ** AdexchangebuyerPretargetingConfigInsert
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert

    -- ** AdexchangebuyerPretargetingConfigList
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List

    -- ** AdexchangebuyerPretargetingConfigPatch
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch

    -- ** AdexchangebuyerPretargetingConfigUpdate
    , module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update

    -- * Types

    -- ** BrandDTO
    , BrandDTO
    , brandDTO
    , bdtoAdvertiserId
    , bdtoName
    , bdtoId

    -- ** EditAllOrderDealsResponse
    , EditAllOrderDealsResponse
    , editAllOrderDealsResponse
    , eaodrDeals

    -- ** MarketplaceNote
    , MarketplaceNote
    , marketplaceNote
    , mnNote
    , mnKind
    , mnTimestampMs
    , mnDealId
    , mnNoteId
    , mnCreatorRole
    , mnOrderId
    , mnOrderRevisionNumber

    -- ** CreativeNATiveAd
    , CreativeNATiveAd
    , creativeNATiveAd
    , cnataImage
    , cnataAppIcon
    , cnataClickTrackingURL
    , cnataBody
    , cnataHeadline
    , cnataImpressionTrackingURL
    , cnataCallToAction
    , cnataStore
    , cnataPrice
    , cnataAdvertiser
    , cnataStarRating
    , cnataLogo

    -- ** PretargetingConfigDimensions
    , PretargetingConfigDimensions
    , pretargetingConfigDimensions
    , pcdHeight
    , pcdWidth

    -- ** TermsDTO
    , TermsDTO
    , termsDTO
    , tdtoFinalizeAutomatically
    , tdtoBuyerBillingType
    , tdtoTargetingAllAdSlots
    , tdtoURLs
    , tdtoEndDate
    , tdtoCpm
    , tdtoEstimatedSpend
    , tdtoAdvertisers
    , tdtoEstimatedImpressionsPerDay
    , tdtoMonetizerType
    , tdtoAudienceSegmentDescription
    , tdtoCreativeReviewPolicy
    , tdtoMinimumTrueLooks
    , tdtoStartDate
    , tdtoCreativeBlockingLevel
    , tdtoSemiTransparent
    , tdtoAudienceSegment
    , tdtoDealPremium
    , tdtoIsReservation
    , tdtoAdSlots
    , tdtoTermsAttributes
    , tdtoInventorySegmentTargeting
    , tdtoDescriptiveName
    , tdtoMinimumSpendMicros
    , tdtoTargetByDealId
    , tdtoBillingTerms
    , tdtoDescription

    -- ** CreativesList
    , CreativesList
    , creativesList
    , clNextPageToken
    , clKind
    , clItems

    -- ** CreativeServingRestrictionsContexts
    , CreativeServingRestrictionsContexts
    , creativeServingRestrictionsContexts
    , csrcPlatform
    , csrcContextType
    , csrcAuctionType
    , csrcGeoCriteriaId

    -- ** CreateOrdersResponse
    , CreateOrdersResponse
    , createOrdersResponse
    , corOrders

    -- ** AddOrderNotesRequest
    , AddOrderNotesRequest
    , addOrderNotesRequest
    , aonrNotes

    -- ** MarketplaceDealParty
    , MarketplaceDealParty
    , marketplaceDealParty
    , mdpSeller
    , mdpBuyer

    -- ** DealPartyDTO
    , DealPartyDTO
    , dealPartyDTO
    , dpdtoBuyerSellerRole
    , dpdtoCustomerId
    , dpdtoName
    , dpdtoWebProperty
    , dpdtoBuyer

    -- ** DeliveryControlFrequencyCap
    , DeliveryControlFrequencyCap
    , deliveryControlFrequencyCap
    , dcfcMaxImpressions
    , dcfcNumTimeUnits
    , dcfcTimeUnitType

    -- ** GetNegotiationsResponse
    , GetNegotiationsResponse
    , getNegotiationsResponse
    , gnrKind
    , gnrNegotiations

    -- ** Budget
    , Budget
    , budget
    , bCurrencyCode
    , bKind
    , bBudgetAmount
    , bAccountId
    , bId
    , bBillingId

    -- ** GetFinalizedNegotiationByExternalDealIdRequest
    , GetFinalizedNegotiationByExternalDealIdRequest
    , getFinalizedNegotiationByExternalDealIdRequest
    , gfnbedirIncludePrivateAuctions

    -- ** PrivateData
    , PrivateData
    , privateData
    , pdReferencePayLoad
    , pdReferenceId

    -- ** AdSize
    , AdSize
    , adSize
    , asHeight
    , asWidth

    -- ** RuleKeyValuePair
    , RuleKeyValuePair
    , ruleKeyValuePair
    , rkvpKeyName
    , rkvpValue

    -- ** GetOrdersResponse
    , GetOrdersResponse
    , getOrdersResponse
    , gorOrders

    -- ** AccountsList
    , AccountsList
    , accountsList
    , alKind
    , alItems

    -- ** CreativeServingRestrictionsDisapprovalReasons
    , CreativeServingRestrictionsDisapprovalReasons
    , creativeServingRestrictionsDisapprovalReasons
    , csrdrReason
    , csrdrDetails

    -- ** GetOrderNotesResponse
    , GetOrderNotesResponse
    , getOrderNotesResponse
    , gonrNotes

    -- ** CreateOrdersRequest
    , CreateOrdersRequest
    , createOrdersRequest
    , cWebPropertyCode
    , cOrders

    -- ** PricePerBuyer
    , PricePerBuyer
    , pricePerBuyer
    , ppbPrice
    , ppbBuyer

    -- ** TargetingValueDayPartTargetingDayPart
    , TargetingValueDayPartTargetingDayPart
    , targetingValueDayPartTargetingDayPart
    , tvdptdpEndHour
    , tvdptdpStartHour
    , tvdptdpStartMinute
    , tvdptdpDayOfWeek
    , tvdptdpEndMinute

    -- ** DeliveryControl
    , DeliveryControl
    , deliveryControl
    , dcFrequencyCaps
    , dcDeliveryRateType

    -- ** Creative
    , Creative
    , creative
    , cAttribute
    , cNATiveAd
    , cHeight
    , cBuyerCreativeId
    , cAdvertiserName
    , cAgencyId
    , cCorrections
    , cProductCategories
    , cKind
    , cHTMLSnippet
    , cAdvertiserId
    , cRestrictedCategories
    , cDealsStatus
    , cWidth
    , cClickThroughURL
    , cVendorType
    , cAccountId
    , cImpressionTrackingURL
    , cFilteringReasons
    , cVersion
    , cSensitiveCategories
    , cVideoURL
    , cAPIUploadTimestamp
    , cServingRestrictions
    , cOpenAuctionStatus

    -- ** AdexchangebuyerMarketplaceOrdersUpdateUpdateAction
    , AdexchangebuyerMarketplaceOrdersUpdateUpdateAction (..)

    -- ** AddOrderDealsResponse
    , AddOrderDealsResponse
    , addOrderDealsResponse
    , aodrDeals
    , aodrOrderRevisionNumber

    -- ** PretargetingConfigList
    , PretargetingConfigList
    , pretargetingConfigList
    , pclKind
    , pclItems

    -- ** CreativeCorrections
    , CreativeCorrections
    , creativeCorrections
    , ccReason
    , ccDetails

    -- ** AdexchangebuyerCreativesListOpenAuctionStatusFilter
    , AdexchangebuyerCreativesListOpenAuctionStatusFilter (..)

    -- ** BuyerDTO
    , BuyerDTO
    , buyerDTO
    , buySponsorAccountId
    , buyEnabledForInterestTargetingDeals
    , buyCustomerId
    , buyEnabledForPreferredDeals
    , buyAccountId
    , buyDisplayName
    , buyId

    -- ** DealTermsNonGuaranteedFixedPriceTerms
    , DealTermsNonGuaranteedFixedPriceTerms
    , dealTermsNonGuaranteedFixedPriceTerms
    , dtngfptFixedPrices

    -- ** AdSlotDTO
    , AdSlotDTO
    , adSlotDTO
    , asdtoWebPropertyId
    , asdtoSize
    , asdtoChannelCode
    , asdtoChannelId
    , asdtoName
    , asdtoDescription

    -- ** PerformanceReport
    , PerformanceReport
    , performanceReport
    , prFilteredBidRate
    , prKind
    , prLatency95thPercentile
    , prCookieMatcherStatusRate
    , prHostedMatchStatusRate
    , prUnsuccessfulRequestRate
    , prBidRequestRate
    , prQuotaThrottledLimit
    , prQuotaConfiguredLimit
    , prSuccessfulRequestRate
    , prLatency85thPercentile
    , prCalloutStatusRate
    , prLatency50thPercentile
    , prBidRate
    , prCreativeStatusRate
    , prNoQuotaInRegion
    , prRegion
    , prInventoryMatchRate
    , prPixelMatchResponses
    , prTimestamp
    , prPixelMatchRequests
    , prOutOfQuota

    -- ** Account
    , Account
    , account
    , aMaximumTotalQps
    , aKind
    , aCookieMatchingURL
    , aMaximumActiveCreatives
    , aCookieMatchingNid
    , aNumberActiveCreatives
    , aId
    , aBidderLocation

    -- ** Seller
    , Seller
    , seller
    , sAccountId
    , sSubAccountId

    -- ** DeleteOrderDealsRequest
    , DeleteOrderDealsRequest
    , deleteOrderDealsRequest
    , dodrUpdateAction
    , dodrDealIds
    , dodrOrderRevisionNumber

    -- ** PretargetingConfigExcludedPlacements
    , PretargetingConfigExcludedPlacements
    , pretargetingConfigExcludedPlacements
    , pcepToken
    , pcepType

    -- ** CreativeNATiveAdLogo
    , CreativeNATiveAdLogo
    , creativeNATiveAdLogo
    , cnatalHeight
    , cnatalURL
    , cnatalWidth

    -- ** GetOrderDealsResponse
    , GetOrderDealsResponse
    , getOrderDealsResponse
    , godrDeals

    -- ** CreativeFilteringReasons
    , CreativeFilteringReasons
    , creativeFilteringReasons
    , cfrReasons
    , cfrDate

    -- ** ContactInformation
    , ContactInformation
    , contactInformation
    , ciEmail
    , ciName

    -- ** TargetingValueCreativeSize
    , TargetingValueCreativeSize
    , targetingValueCreativeSize
    , tvcsSize
    , tvcsCompanionSizes
    , tvcsCreativeSizeType

    -- ** PretargetingConfig
    , PretargetingConfig
    , pretargetingConfig
    , pcPlatforms
    , pcMobileCarriers
    , pcVendorTypes
    , pcExcludedGeoCriteriaIds
    , pcSupportedCreativeAttributes
    , pcUserLists
    , pcKind
    , pcExcludedPlacements
    , pcMobileDevices
    , pcLanguages
    , pcVerticals
    , pcConfigId
    , pcPlacements
    , pcExcludedUserLists
    , pcConfigName
    , pcGeoCriteriaIds
    , pcDimensions
    , pcExcludedVerticals
    , pcCreativeType
    , pcIsActive
    , pcExcludedContentLabels
    , pcBillingId
    , pcMobileOperatingSystemVersions

    -- ** PerformanceReportList
    , PerformanceReportList
    , performanceReportList
    , prlKind
    , prlPerformanceReport

    -- ** AdexchangebuyerMarketplaceOrdersPatchUpdateAction
    , AdexchangebuyerMarketplaceOrdersPatchUpdateAction (..)

    -- ** NegotiationDTO
    , NegotiationDTO
    , negotiationDTO
    , ndtoNegotiationState
    , ndtoExternalDealId
    , ndtoStatus
    , ndtoDealType
    , ndtoNegotiationRounds
    , ndtoKind
    , ndtoBilledBuyer
    , ndtoBuyerEmailContacts
    , ndtoStats
    , ndtoSeller
    , ndtoLabelNames
    , ndtoOfferId
    , ndtoNegotiationId
    , ndtoSellerEmailContacts
    , ndtoBuyer

    -- ** AudienceSegment
    , AudienceSegment
    , audienceSegment
    , asNumCookies
    , asName
    , asId
    , asDescription

    -- ** OfferDTO
    , OfferDTO
    , offerDTO
    , odtoCreator
    , odtoStatus
    , odtoOfferState
    , odtoPointOfContact
    , odtoTerms
    , odtoKind
    , odtoBilledBuyer
    , odtoOpenToDealParties
    , odtoEmailContacts
    , odtoLabelNames
    , odtoOfferId
    , odtoClosedToDealParties
    , odtoAnonymous
    , odtoIsOpen

    -- ** TargetingValueSize
    , TargetingValueSize
    , targetingValueSize
    , tvsHeight
    , tvsWidth

    -- ** MarketplaceOffer
    , MarketplaceOffer
    , marketplaceOffer
    , moState
    , moWebPropertyCode
    , moCreationTimeMs
    , moTerms
    , moLastUpdateTimeMs
    , moKind
    , moRevisionNumber
    , moHasCreatorSignedOff
    , moFlightStartTimeMs
    , moSharedTargetings
    , moSeller
    , moSyndicationProduct
    , moFlightEndTimeMs
    , moName
    , moCreatorContacts
    , moOfferId
    , moLabels

    -- ** GetNegotiationsRequest
    , GetNegotiationsRequest
    , getNegotiationsRequest
    , gnrSinceTimestampMillis
    , gnrFinalized
    , gnrIncludePrivateAuctions

    -- ** BillingInfoList
    , BillingInfoList
    , billingInfoList
    , bilKind
    , bilItems

    -- ** AddOrderNotesResponse
    , AddOrderNotesResponse
    , addOrderNotesResponse
    , aNotes

    -- ** MoneyDTO
    , MoneyDTO
    , moneyDTO
    , mdtoCurrencyCode
    , mdtoMicros

    -- ** ListClientAccessCapabilitiesResponse
    , ListClientAccessCapabilitiesResponse
    , listClientAccessCapabilitiesResponse
    , lcacrClientAccessPermissions

    -- ** GetNegotiationByIdRequest
    , GetNegotiationByIdRequest
    , getNegotiationByIdRequest
    , gnbirIncludePrivateAuctions

    -- ** ListOffersResponse
    , ListOffersResponse
    , listOffersResponse
    , lorKind
    , lorOffers

    -- ** AdvertiserDTO
    , AdvertiserDTO
    , advertiserDTO
    , adtoStatus
    , adtoBrands
    , adtoName
    , adtoId

    -- ** TargetingValue
    , TargetingValue
    , targetingValue
    , tvCreativeSizeValue
    , tvStringValue
    , tvLongValue
    , tvDayPartTargetingValue

    -- ** Price
    , Price
    , price
    , pCurrencyCode
    , pAmountMicros

    -- ** CreativeNATiveAdAppIcon
    , CreativeNATiveAdAppIcon
    , creativeNATiveAdAppIcon
    , cnataaiHeight
    , cnataaiURL
    , cnataaiWidth

    -- ** EditAllOrderDealsRequest
    , EditAllOrderDealsRequest
    , editAllOrderDealsRequest
    , eUpdateAction
    , eDeals
    , eOrder
    , eOrderRevisionNumber

    -- ** BillingInfo
    , BillingInfo
    , billingInfo
    , biKind
    , biAccountName
    , biAccountId
    , biBillingId

    -- ** WebPropertyDTO
    , WebPropertyDTO
    , webPropertyDTO
    , wpdtoEnabledForPreferredDeals
    , wpdtoSyndicationProduct
    , wpdtoName
    , wpdtoPropertyCode
    , wpdtoId
    , wpdtoSiteURLs
    , wpdtoAllowInterestTargetedAds

    -- ** TargetingValueDayPartTargeting
    , TargetingValueDayPartTargeting
    , targetingValueDayPartTargeting
    , tvdptTimeZoneType
    , tvdptDayParts

    -- ** ListOffersRequest
    , ListOffersRequest
    , listOffersRequest
    , lorSinceTimestampMillis

    -- ** CreativeNATiveAdImage
    , CreativeNATiveAdImage
    , creativeNATiveAdImage
    , cnataiHeight
    , cnataiURL
    , cnataiWidth

    -- ** ListClientAccessCapabilitiesRequest
    , ListClientAccessCapabilitiesRequest
    , listClientAccessCapabilitiesRequest
    , lcacrSponsorAccountId

    -- ** InventorySegmentTargeting
    , InventorySegmentTargeting
    , inventorySegmentTargeting
    , istNegativeVideoDurationSegments
    , istNegativeIcmBrands
    , istNegativeKeyValues
    , istPositiveAudienceSegments
    , istPositiveXfpPlacements
    , istNegativeXfpAdSlots
    , istPositiveOperatingSystemVersions
    , istPositiveSizes
    , istPositiveDeviceCategories
    , istPositiveLocations
    , istNegativeAdSizes
    , istPositiveOperatingSystems
    , istPositiveSiteURLs
    , istNegativeInventorySlots
    , istNegativeVideoAdPositionSegments
    , istPositiveAdTypeSegments
    , istPositiveIcmInterests
    , istPositiveMobileApps
    , istPositiveKeyValues
    , istPositiveIcmBrands
    , istPositiveVideoDurationSegments
    , istNegativeAudienceSegments
    , istNegativeXfpPlacements
    , istPositiveXfpAdSlots
    , istNegativeOperatingSystemVersions
    , istNegativeSizes
    , istNegativeLocations
    , istNegativeDeviceCategories
    , istNegativeOperatingSystems
    , istPositiveAdSizes
    , istNegativeSiteURLs
    , istNegativeAdTypeSegments
    , istPositiveVideoAdPositionSegments
    , istPositiveInventorySlots
    , istNegativeMobileApps
    , istNegativeIcmInterests

    -- ** SharedTargeting
    , SharedTargeting
    , sharedTargeting
    , stKey
    , stExclusions
    , stInclusions

    -- ** AccountBidderLocation
    , AccountBidderLocation
    , accountBidderLocation
    , ablURL
    , ablMaximumQps
    , ablRegion

    -- ** CreativeFilteringReasonsReasons
    , CreativeFilteringReasonsReasons
    , creativeFilteringReasonsReasons
    , cfrrFilteringStatus
    , cfrrFilteringCount

    -- ** ClientAccessCapabilities
    , ClientAccessCapabilities
    , clientAccessCapabilities
    , cacClientAccountId
    , cacCapabilities

    -- ** DeleteOrderDealsResponse
    , DeleteOrderDealsResponse
    , deleteOrderDealsResponse
    , dDeals
    , dOrderRevisionNumber

    -- ** MarketplaceDeal
    , MarketplaceDeal
    , marketplaceDeal
    , mdExternalDealId
    , mdBuyerPrivateData
    , mdWebPropertyCode
    , mdCreationTimeMs
    , mdTerms
    , mdOfferRevisionNumber
    , mdLastUpdateTimeMs
    , mdKind
    , mdDeliveryControl
    , mdFlightStartTimeMs
    , mdSharedTargetings
    , mdDealId
    , mdInventoryDescription
    , mdSyndicationProduct
    , mdFlightEndTimeMs
    , mdName
    , mdSellerContacts
    , mdOfferId
    , mdOrderId

    -- ** PretargetingConfigPlacements
    , PretargetingConfigPlacements
    , pretargetingConfigPlacements
    , pcpToken
    , pcpType

    -- ** NegotiationRoundDTO
    , NegotiationRoundDTO
    , negotiationRoundDTO
    , nrdtoTerms
    , nrdtoKind
    , nrdtoOriginatorRole
    , nrdtoAction
    , nrdtoDBmPartnerId
    , nrdtoNotes
    , nrdtoNegotiationId
    , nrdtoEditHistory
    , nrdtoRoundNumber

    -- ** StatsDTO
    , StatsDTO
    , statsDTO
    , sdtoBids
    , sdtoSpend
    , sdtoImpressions
    , sdtoGoodBids
    , sdtoRevenue
    , sdtoRequests

    -- ** GetOffersResponse
    , GetOffersResponse
    , getOffersResponse
    , gorOffers

    -- ** DealTermsNonGuaranteedAuctionTerms
    , DealTermsNonGuaranteedAuctionTerms
    , dealTermsNonGuaranteedAuctionTerms
    , dtngatReservePricePerBuyers
    , dtngatPrivateAuctionId

    -- ** CreativeServingRestrictions
    , CreativeServingRestrictions
    , creativeServingRestrictions
    , csrContexts
    , csrReason
    , csrDisapprovalReasons

    -- ** AdexchangebuyerCreativesListDealsStatusFilter
    , AdexchangebuyerCreativesListDealsStatusFilter (..)

    -- ** Buyer
    , Buyer
    , buyer
    , bbAccountId

    -- ** MarketplaceLabel
    , MarketplaceLabel
    , marketplaceLabel
    , mlDeprecatedMarketplaceDealParty
    , mlAccountId
    , mlCreateTimeMs
    , mlLabel

    -- ** DateTime
    , DateTime
    , dateTime
    , dtSecond
    , dtDay
    , dtYear
    , dtHour
    , dtMonth
    , dtMinute
    , dtTimeZoneId

    -- ** DealTermsGuaranteedFixedPriceTerms
    , DealTermsGuaranteedFixedPriceTerms
    , dealTermsGuaranteedFixedPriceTerms
    , dtgfptGuaranteedLooks
    , dtgfptGuaranteedImpressions
    , dtgfptFixedPrices

    -- ** MarketplaceOrder
    , MarketplaceOrder
    , marketplaceOrder
    , marBuyerPrivateData
    , marIsSetupComplete
    , marBuyerContacts
    , marKind
    , marOriginatorRole
    , marRevisionNumber
    , marBilledBuyer
    , marIsRenegotiating
    , marHasSellerSignedOff
    , marSeller
    , marOrderState
    , marName
    , marSellerContacts
    , marLastUpdaterRole
    , marLabels
    , marRevisionTimeMs
    , marOrderId
    , marLastUpdaterOrCommentorRole
    , marHasBuyerSignedOff
    , marBuyer

    -- ** AddOrderDealsRequest
    , AddOrderDealsRequest
    , addOrderDealsRequest
    , aUpdateAction
    , aDeals
    , aOrderRevisionNumber

    -- ** DealTerms
    , DealTerms
    , dealTerms
    , dtNonGuaranteedFixedPriceTerms
    , dtNonGuaranteedAuctionTerms
    , dtGuaranteedFixedPriceTerms
    , dtDescription

    -- ** EditHistoryDTO
    , EditHistoryDTO
    , editHistoryDTO
    , ehdtoLastUpdatedByLoginName
    , ehdtoCreatedByLoginName
    , ehdtoLastUpdateTimeStamp
    , ehdtoCreatedTimeStamp
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AdExchangeBuyer.Accounts.Get
import           Network.Google.Resource.AdExchangeBuyer.Accounts.List
import           Network.Google.Resource.AdExchangeBuyer.Accounts.Patch
import           Network.Google.Resource.AdExchangeBuyer.Accounts.Update
import           Network.Google.Resource.AdExchangeBuyer.BillingInfo.Get
import           Network.Google.Resource.AdExchangeBuyer.BillingInfo.List
import           Network.Google.Resource.AdExchangeBuyer.Budget.Get
import           Network.Google.Resource.AdExchangeBuyer.Budget.Patch
import           Network.Google.Resource.AdExchangeBuyer.Budget.Update
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Insert
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.List
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
import           Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Get
import           Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
import           Network.Google.Resource.AdExchangeBuyer.Creatives.List
import           Network.Google.Resource.AdExchangeBuyer.Deals.Get
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
import           Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update
import           Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert
import           Network.Google.Resource.AdExchangeBuyer.Negotiations.Get
import           Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert
import           Network.Google.Resource.AdExchangeBuyer.Negotiations.List
import           Network.Google.Resource.AdExchangeBuyer.Offers.Get
import           Network.Google.Resource.AdExchangeBuyer.Offers.Insert
import           Network.Google.Resource.AdExchangeBuyer.Offers.List
import           Network.Google.Resource.AdExchangeBuyer.PerformanceReport.List
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
import           Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update

{- $resources
TODO
-}

type AdExchangeBuyerAPI =
     MarketplaceNotesInsertResource :<|>
       MarketplaceNotesListResource
       :<|> DealsGetResource
       :<|> NegotiationRoundsInsertResource
       :<|> AccountsListResource
       :<|> AccountsPatchResource
       :<|> AccountsGetResource
       :<|> AccountsUpdateResource
       :<|> BudgetPatchResource
       :<|> BudgetGetResource
       :<|> BudgetUpdateResource
       :<|> CreativesInsertResource
       :<|> CreativesListResource
       :<|> CreativesGetResource
       :<|> PerformanceReportListResource
       :<|> MarketplaceOffersGetResource
       :<|> MarketplaceOffersSearchResource
       :<|> PretargetingConfigInsertResource
       :<|> PretargetingConfigListResource
       :<|> PretargetingConfigPatchResource
       :<|> PretargetingConfigGetResource
       :<|> PretargetingConfigDeleteResource
       :<|> PretargetingConfigUpdateResource
       :<|> MarketplaceOrdersInsertResource
       :<|> MarketplaceOrdersPatchResource
       :<|> MarketplaceOrdersGetResource
       :<|> MarketplaceOrdersSearchResource
       :<|> MarketplaceOrdersUpdateResource
       :<|> ClientAccessInsertResource
       :<|> ClientAccessListResource
       :<|> ClientAccessPatchResource
       :<|> ClientAccessGetResource
       :<|> ClientAccessDeleteResource
       :<|> ClientAccessUpdateResource
       :<|> BillingInfoListResource
       :<|> BillingInfoGetResource
       :<|> MarketplaceDealsInsertResource
       :<|> MarketplaceDealsListResource
       :<|> MarketplaceDealsDeleteResource
       :<|> MarketplaceDealsUpdateResource
       :<|> NegotiationsInsertResource
       :<|> NegotiationsListResource
       :<|> NegotiationsGetResource
       :<|> OffersInsertResource
       :<|> OffersListResource
       :<|> OffersGetResource

adExchangeBuyerAPI :: Proxy AdExchangeBuyerAPI
adExchangeBuyerAPI = Proxy
