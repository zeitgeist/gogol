{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Autoscaler.ZoneOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified zone-specific operation resource.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @AutoscalerZoneOperationsDelete@.
module Network.Google.Resource.Autoscaler.ZoneOperations.Delete
    (
    -- * REST Resource
      ZoneOperationsDeleteResource

    -- * Creating a Request
    , zoneOperationsDelete'
    , ZoneOperationsDelete'

    -- * Request Lenses
    , zodQuotaUser
    , zodPrettyPrint
    , zodProject
    , zodOperation
    , zodUserIP
    , zodZone
    , zodKey
    , zodOAuthToken
    , zodFields
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @AutoscalerZoneOperationsDelete@ which the
-- 'ZoneOperationsDelete'' request conforms to.
type ZoneOperationsDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified zone-specific operation resource.
--
-- /See:/ 'zoneOperationsDelete'' smart constructor.
data ZoneOperationsDelete' = ZoneOperationsDelete'
    { _zodQuotaUser   :: !(Maybe Text)
    , _zodPrettyPrint :: !Bool
    , _zodProject     :: !Text
    , _zodOperation   :: !Text
    , _zodUserIP      :: !(Maybe Text)
    , _zodZone        :: !Text
    , _zodKey         :: !(Maybe AuthKey)
    , _zodOAuthToken  :: !(Maybe OAuthToken)
    , _zodFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zodQuotaUser'
--
-- * 'zodPrettyPrint'
--
-- * 'zodProject'
--
-- * 'zodOperation'
--
-- * 'zodUserIP'
--
-- * 'zodZone'
--
-- * 'zodKey'
--
-- * 'zodOAuthToken'
--
-- * 'zodFields'
zoneOperationsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'zone'
    -> ZoneOperationsDelete'
zoneOperationsDelete' pZodProject_ pZodOperation_ pZodZone_ =
    ZoneOperationsDelete'
    { _zodQuotaUser = Nothing
    , _zodPrettyPrint = True
    , _zodProject = pZodProject_
    , _zodOperation = pZodOperation_
    , _zodUserIP = Nothing
    , _zodZone = pZodZone_
    , _zodKey = Nothing
    , _zodOAuthToken = Nothing
    , _zodFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
zodQuotaUser :: Lens' ZoneOperationsDelete' (Maybe Text)
zodQuotaUser
  = lens _zodQuotaUser (\ s a -> s{_zodQuotaUser = a})

-- | Returns response with indentations and line breaks.
zodPrettyPrint :: Lens' ZoneOperationsDelete' Bool
zodPrettyPrint
  = lens _zodPrettyPrint
      (\ s a -> s{_zodPrettyPrint = a})

zodProject :: Lens' ZoneOperationsDelete' Text
zodProject
  = lens _zodProject (\ s a -> s{_zodProject = a})

zodOperation :: Lens' ZoneOperationsDelete' Text
zodOperation
  = lens _zodOperation (\ s a -> s{_zodOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
zodUserIP :: Lens' ZoneOperationsDelete' (Maybe Text)
zodUserIP
  = lens _zodUserIP (\ s a -> s{_zodUserIP = a})

zodZone :: Lens' ZoneOperationsDelete' Text
zodZone = lens _zodZone (\ s a -> s{_zodZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
zodKey :: Lens' ZoneOperationsDelete' (Maybe AuthKey)
zodKey = lens _zodKey (\ s a -> s{_zodKey = a})

-- | OAuth 2.0 token for the current user.
zodOAuthToken :: Lens' ZoneOperationsDelete' (Maybe OAuthToken)
zodOAuthToken
  = lens _zodOAuthToken
      (\ s a -> s{_zodOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
zodFields :: Lens' ZoneOperationsDelete' (Maybe Text)
zodFields
  = lens _zodFields (\ s a -> s{_zodFields = a})

instance GoogleAuth ZoneOperationsDelete' where
        _AuthKey = zodKey . _Just
        _AuthToken = zodOAuthToken . _Just

instance GoogleRequest ZoneOperationsDelete' where
        type Rs ZoneOperationsDelete' = ()
        request = requestWith autoscalerRequest
        requestWith rq ZoneOperationsDelete'{..}
          = go _zodProject _zodZone _zodOperation _zodQuotaUser
              (Just _zodPrettyPrint)
              _zodUserIP
              _zodFields
              _zodKey
              _zodOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ZoneOperationsDeleteResource)
                      rq