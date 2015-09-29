{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlayMoviesPartner.Accounts.ExperienceLocales.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List ExperienceLocales owned or managed by the partner. See
-- _Authentication and Authorization rules_ and _List methods rules_ for
-- more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.experienceLocales.list@.
module Network.Google.API.PlayMoviesPartner.Accounts.ExperienceLocales.List
    (
    -- * REST Resource
      AccountsExperienceLocalesListAPI

    -- * Creating a Request
    , accountsExperienceLocalesList'
    , AccountsExperienceLocalesList'

    -- * Request Lenses
    , aellTitleLevelEidr
    , aellStatus
    , aellPphNames
    , aellXgafv
    , aellStudioNames
    , aellQuotaUser
    , aellPrettyPrint
    , aellUploadProtocol
    , aellPp
    , aellAccessToken
    , aellUploadType
    , aellAltCutId
    , aellCustomId
    , aellAccountId
    , aellBearerToken
    , aellKey
    , aellEditLevelEidr
    , aellPageToken
    , aellOauthToken
    , aellPageSize
    , aellFields
    , aellCallback
    , aellAlt
    ) where

import           Network.Google.Play.Movies.Partner.Types
import           Network.Google.Prelude

-- | A resource alias for playmoviespartner.accounts.experienceLocales.list which the
-- 'AccountsExperienceLocalesList'' request conforms to.
type AccountsExperienceLocalesListAPI =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "experienceLocales" :>
             QueryParam "titleLevelEidr" Text :>
               QueryParam "status" Text :>
                 QueryParam "pphNames" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "studioNames" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "upload_protocol" Text :>
                             QueryParam "pp" Bool :>
                               QueryParam "access_token" Text :>
                                 QueryParam "uploadType" Text :>
                                   QueryParam "altCutId" Text :>
                                     QueryParam "customId" Text :>
                                       QueryParam "bearer_token" Text :>
                                         QueryParam "key" Text :>
                                           QueryParam "editLevelEidr" Text :>
                                             QueryParam "pageToken" Text :>
                                               QueryParam "oauth_token" Text :>
                                                 QueryParam "pageSize" Int32 :>
                                                   QueryParam "fields" Text :>
                                                     QueryParam "callback" Text
                                                       :>
                                                       QueryParam "alt" Text :>
                                                         Get '[JSON]
                                                           ListExperienceLocalesResponse

-- | List ExperienceLocales owned or managed by the partner. See
-- _Authentication and Authorization rules_ and _List methods rules_ for
-- more information about this method.
--
-- /See:/ 'accountsExperienceLocalesList'' smart constructor.
data AccountsExperienceLocalesList' = AccountsExperienceLocalesList'
    { _aellTitleLevelEidr :: !(Maybe Text)
    , _aellStatus         :: !(Maybe Text)
    , _aellPphNames       :: !(Maybe Text)
    , _aellXgafv          :: !(Maybe Text)
    , _aellStudioNames    :: !(Maybe Text)
    , _aellQuotaUser      :: !(Maybe Text)
    , _aellPrettyPrint    :: !Bool
    , _aellUploadProtocol :: !(Maybe Text)
    , _aellPp             :: !Bool
    , _aellAccessToken    :: !(Maybe Text)
    , _aellUploadType     :: !(Maybe Text)
    , _aellAltCutId       :: !(Maybe Text)
    , _aellCustomId       :: !(Maybe Text)
    , _aellAccountId      :: !Text
    , _aellBearerToken    :: !(Maybe Text)
    , _aellKey            :: !(Maybe Text)
    , _aellEditLevelEidr  :: !(Maybe Text)
    , _aellPageToken      :: !(Maybe Text)
    , _aellOauthToken     :: !(Maybe Text)
    , _aellPageSize       :: !(Maybe Int32)
    , _aellFields         :: !(Maybe Text)
    , _aellCallback       :: !(Maybe Text)
    , _aellAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsExperienceLocalesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aellTitleLevelEidr'
--
-- * 'aellStatus'
--
-- * 'aellPphNames'
--
-- * 'aellXgafv'
--
-- * 'aellStudioNames'
--
-- * 'aellQuotaUser'
--
-- * 'aellPrettyPrint'
--
-- * 'aellUploadProtocol'
--
-- * 'aellPp'
--
-- * 'aellAccessToken'
--
-- * 'aellUploadType'
--
-- * 'aellAltCutId'
--
-- * 'aellCustomId'
--
-- * 'aellAccountId'
--
-- * 'aellBearerToken'
--
-- * 'aellKey'
--
-- * 'aellEditLevelEidr'
--
-- * 'aellPageToken'
--
-- * 'aellOauthToken'
--
-- * 'aellPageSize'
--
-- * 'aellFields'
--
-- * 'aellCallback'
--
-- * 'aellAlt'
accountsExperienceLocalesList'
    :: Text -- ^ 'accountId'
    -> AccountsExperienceLocalesList'
accountsExperienceLocalesList' pAellAccountId_ =
    AccountsExperienceLocalesList'
    { _aellTitleLevelEidr = Nothing
    , _aellStatus = Nothing
    , _aellPphNames = Nothing
    , _aellXgafv = Nothing
    , _aellStudioNames = Nothing
    , _aellQuotaUser = Nothing
    , _aellPrettyPrint = True
    , _aellUploadProtocol = Nothing
    , _aellPp = True
    , _aellAccessToken = Nothing
    , _aellUploadType = Nothing
    , _aellAltCutId = Nothing
    , _aellCustomId = Nothing
    , _aellAccountId = pAellAccountId_
    , _aellBearerToken = Nothing
    , _aellKey = Nothing
    , _aellEditLevelEidr = Nothing
    , _aellPageToken = Nothing
    , _aellOauthToken = Nothing
    , _aellPageSize = Nothing
    , _aellFields = Nothing
    , _aellCallback = Nothing
    , _aellAlt = "json"
    }

-- | Filter ExperienceLocales that match a given title-level EIDR.
aellTitleLevelEidr :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellTitleLevelEidr
  = lens _aellTitleLevelEidr
      (\ s a -> s{_aellTitleLevelEidr = a})

-- | Filter ExperienceLocales that match one of the given status.
aellStatus :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellStatus
  = lens _aellStatus (\ s a -> s{_aellStatus = a})

-- | See _List methods rules_ for info about this field.
aellPphNames :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellPphNames
  = lens _aellPphNames (\ s a -> s{_aellPphNames = a})

-- | V1 error format.
aellXgafv :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellXgafv
  = lens _aellXgafv (\ s a -> s{_aellXgafv = a})

-- | See _List methods rules_ for info about this field.
aellStudioNames :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellStudioNames
  = lens _aellStudioNames
      (\ s a -> s{_aellStudioNames = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aellQuotaUser :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellQuotaUser
  = lens _aellQuotaUser
      (\ s a -> s{_aellQuotaUser = a})

-- | Returns response with indentations and line breaks.
aellPrettyPrint :: Lens' AccountsExperienceLocalesList' Bool
aellPrettyPrint
  = lens _aellPrettyPrint
      (\ s a -> s{_aellPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aellUploadProtocol :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellUploadProtocol
  = lens _aellUploadProtocol
      (\ s a -> s{_aellUploadProtocol = a})

-- | Pretty-print response.
aellPp :: Lens' AccountsExperienceLocalesList' Bool
aellPp = lens _aellPp (\ s a -> s{_aellPp = a})

-- | OAuth access token.
aellAccessToken :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellAccessToken
  = lens _aellAccessToken
      (\ s a -> s{_aellAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aellUploadType :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellUploadType
  = lens _aellUploadType
      (\ s a -> s{_aellUploadType = a})

-- | Filter ExperienceLocales that match a case-insensitive, partner-specific
-- Alternative Cut ID.
aellAltCutId :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellAltCutId
  = lens _aellAltCutId (\ s a -> s{_aellAltCutId = a})

-- | Filter ExperienceLocales that match a case-insensitive, partner-specific
-- custom id.
aellCustomId :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellCustomId
  = lens _aellCustomId (\ s a -> s{_aellCustomId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aellAccountId :: Lens' AccountsExperienceLocalesList' Text
aellAccountId
  = lens _aellAccountId
      (\ s a -> s{_aellAccountId = a})

-- | OAuth bearer token.
aellBearerToken :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellBearerToken
  = lens _aellBearerToken
      (\ s a -> s{_aellBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aellKey :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellKey = lens _aellKey (\ s a -> s{_aellKey = a})

-- | Filter ExperienceLocales that match a given edit-level EIDR.
aellEditLevelEidr :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellEditLevelEidr
  = lens _aellEditLevelEidr
      (\ s a -> s{_aellEditLevelEidr = a})

-- | See _List methods rules_ for info about this field.
aellPageToken :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellPageToken
  = lens _aellPageToken
      (\ s a -> s{_aellPageToken = a})

-- | OAuth 2.0 token for the current user.
aellOauthToken :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellOauthToken
  = lens _aellOauthToken
      (\ s a -> s{_aellOauthToken = a})

-- | See _List methods rules_ for info about this field.
aellPageSize :: Lens' AccountsExperienceLocalesList' (Maybe Int32)
aellPageSize
  = lens _aellPageSize (\ s a -> s{_aellPageSize = a})

-- | Selector specifying which fields to include in a partial response.
aellFields :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellFields
  = lens _aellFields (\ s a -> s{_aellFields = a})

-- | JSONP
aellCallback :: Lens' AccountsExperienceLocalesList' (Maybe Text)
aellCallback
  = lens _aellCallback (\ s a -> s{_aellCallback = a})

-- | Data format for response.
aellAlt :: Lens' AccountsExperienceLocalesList' Text
aellAlt = lens _aellAlt (\ s a -> s{_aellAlt = a})

instance GoogleRequest AccountsExperienceLocalesList'
         where
        type Rs AccountsExperienceLocalesList' =
             ListExperienceLocalesResponse
        request
          = requestWithRoute defReq playMoviesPartnerURL
        requestWithRoute r u
          AccountsExperienceLocalesList'{..}
          = go _aellTitleLevelEidr _aellStatus _aellPphNames
              _aellXgafv
              _aellStudioNames
              _aellQuotaUser
              (Just _aellPrettyPrint)
              _aellUploadProtocol
              (Just _aellPp)
              _aellAccessToken
              _aellUploadType
              _aellAltCutId
              _aellCustomId
              _aellAccountId
              _aellBearerToken
              _aellKey
              _aellEditLevelEidr
              _aellPageToken
              _aellOauthToken
              _aellPageSize
              _aellFields
              _aellCallback
              (Just _aellAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsExperienceLocalesListAPI)
                      r
                      u