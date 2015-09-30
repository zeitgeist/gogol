{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCustombatch@.
module Content.Orders.Custombatch
    (
    -- * REST Resource
      OrdersCustombatchAPI

    -- * Creating a Request
    , ordersCustombatch
    , OrdersCustombatch

    -- * Request Lenses
    , ordQuotaUser
    , ordPrettyPrint
    , ordUserIp
    , ordKey
    , ordOauthToken
    , ordFields
    , ordAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCustombatch@ which the
-- 'OrdersCustombatch' request conforms to.
type OrdersCustombatchAPI =
     "orders" :>
       "batch" :> Post '[JSON] OrdersCustomBatchResponse

-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ 'ordersCustombatch' smart constructor.
data OrdersCustombatch = OrdersCustombatch
    { _ordQuotaUser   :: !(Maybe Text)
    , _ordPrettyPrint :: !Bool
    , _ordUserIp      :: !(Maybe Text)
    , _ordKey         :: !(Maybe Text)
    , _ordOauthToken  :: !(Maybe Text)
    , _ordFields      :: !(Maybe Text)
    , _ordAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordQuotaUser'
--
-- * 'ordPrettyPrint'
--
-- * 'ordUserIp'
--
-- * 'ordKey'
--
-- * 'ordOauthToken'
--
-- * 'ordFields'
--
-- * 'ordAlt'
ordersCustombatch
    :: OrdersCustombatch
ordersCustombatch =
    OrdersCustombatch
    { _ordQuotaUser = Nothing
    , _ordPrettyPrint = True
    , _ordUserIp = Nothing
    , _ordKey = Nothing
    , _ordOauthToken = Nothing
    , _ordFields = Nothing
    , _ordAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ordQuotaUser :: Lens' OrdersCustombatch' (Maybe Text)
ordQuotaUser
  = lens _ordQuotaUser (\ s a -> s{_ordQuotaUser = a})

-- | Returns response with indentations and line breaks.
ordPrettyPrint :: Lens' OrdersCustombatch' Bool
ordPrettyPrint
  = lens _ordPrettyPrint
      (\ s a -> s{_ordPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ordUserIp :: Lens' OrdersCustombatch' (Maybe Text)
ordUserIp
  = lens _ordUserIp (\ s a -> s{_ordUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ordKey :: Lens' OrdersCustombatch' (Maybe Text)
ordKey = lens _ordKey (\ s a -> s{_ordKey = a})

-- | OAuth 2.0 token for the current user.
ordOauthToken :: Lens' OrdersCustombatch' (Maybe Text)
ordOauthToken
  = lens _ordOauthToken
      (\ s a -> s{_ordOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ordFields :: Lens' OrdersCustombatch' (Maybe Text)
ordFields
  = lens _ordFields (\ s a -> s{_ordFields = a})

-- | Data format for the response.
ordAlt :: Lens' OrdersCustombatch' Text
ordAlt = lens _ordAlt (\ s a -> s{_ordAlt = a})

instance GoogleRequest OrdersCustombatch' where
        type Rs OrdersCustombatch' =
             OrdersCustomBatchResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCustombatch{..}
          = go _ordQuotaUser _ordPrettyPrint _ordUserIp _ordKey
              _ordOauthToken
              _ordFields
              _ordAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCustombatchAPI)
                      r
                      u