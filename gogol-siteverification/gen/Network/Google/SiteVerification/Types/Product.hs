{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SiteVerification.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SiteVerification.Types.Product where

import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types.Sum

--
-- /See:/ 'siteVerificationWebResourceGettokenResponse' smart constructor.
data SiteVerificationWebResourceGettokenResponse = SiteVerificationWebResourceGettokenResponse
    { _svwrgrToken  :: !(Maybe Text)
    , _svwrgrMethod :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SiteVerificationWebResourceGettokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svwrgrToken'
--
-- * 'svwrgrMethod'
siteVerificationWebResourceGettokenResponse
    :: SiteVerificationWebResourceGettokenResponse
siteVerificationWebResourceGettokenResponse =
    SiteVerificationWebResourceGettokenResponse
    { _svwrgrToken = Nothing
    , _svwrgrMethod = Nothing
    }

-- | The verification token. The token must be placed appropriately in order
-- for verification to succeed.
svwrgrToken :: Lens' SiteVerificationWebResourceGettokenResponse (Maybe Text)
svwrgrToken
  = lens _svwrgrToken (\ s a -> s{_svwrgrToken = a})

-- | The verification method to use in conjunction with this token. For FILE,
-- the token should be placed in the top-level directory of the site,
-- stored inside a file of the same name. For META, the token should be
-- placed in the HEAD tag of the default page that is loaded for the site.
-- For DNS, the token should be placed in a TXT record of the domain.
svwrgrMethod :: Lens' SiteVerificationWebResourceGettokenResponse (Maybe Text)
svwrgrMethod
  = lens _svwrgrMethod (\ s a -> s{_svwrgrMethod = a})

instance FromJSON
         SiteVerificationWebResourceGettokenResponse where
        parseJSON
          = withObject
              "SiteVerificationWebResourceGettokenResponse"
              (\ o ->
                 SiteVerificationWebResourceGettokenResponse <$>
                   (o .:? "token") <*> (o .:? "method"))

instance ToJSON
         SiteVerificationWebResourceGettokenResponse where
        toJSON
          SiteVerificationWebResourceGettokenResponse{..}
          = object
              (catMaybes
                 [("token" .=) <$> _svwrgrToken,
                  ("method" .=) <$> _svwrgrMethod])

--
-- /See:/ 'siteVerificationWebResourceListResponse' smart constructor.
newtype SiteVerificationWebResourceListResponse = SiteVerificationWebResourceListResponse
    { _svwrlrItems :: Maybe [Maybe SiteVerificationWebResourceResource]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SiteVerificationWebResourceListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svwrlrItems'
siteVerificationWebResourceListResponse
    :: SiteVerificationWebResourceListResponse
siteVerificationWebResourceListResponse =
    SiteVerificationWebResourceListResponse
    { _svwrlrItems = Nothing
    }

-- | The list of sites that are owned by the authenticated user.
svwrlrItems :: Lens' SiteVerificationWebResourceListResponse [Maybe SiteVerificationWebResourceResource]
svwrlrItems
  = lens _svwrlrItems (\ s a -> s{_svwrlrItems = a}) .
      _Default
      . _Coerce

instance FromJSON
         SiteVerificationWebResourceListResponse where
        parseJSON
          = withObject
              "SiteVerificationWebResourceListResponse"
              (\ o ->
                 SiteVerificationWebResourceListResponse <$>
                   (o .:? "items" .!= mempty))

instance ToJSON
         SiteVerificationWebResourceListResponse where
        toJSON SiteVerificationWebResourceListResponse{..}
          = object (catMaybes [("items" .=) <$> _svwrlrItems])

--
-- /See:/ 'siteVerificationWebResourceGettokenRequest' smart constructor.
data SiteVerificationWebResourceGettokenRequest = SiteVerificationWebResourceGettokenRequest
    { _svwrgrSite               :: !(Maybe SiteVerificationWebResourceGettokenRequestSite)
    , _svwrgrVerificationMethod :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SiteVerificationWebResourceGettokenRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svwrgrSite'
--
-- * 'svwrgrVerificationMethod'
siteVerificationWebResourceGettokenRequest
    :: SiteVerificationWebResourceGettokenRequest
siteVerificationWebResourceGettokenRequest =
    SiteVerificationWebResourceGettokenRequest
    { _svwrgrSite = Nothing
    , _svwrgrVerificationMethod = Nothing
    }

-- | The site for which a verification token will be generated.
svwrgrSite :: Lens' SiteVerificationWebResourceGettokenRequest (Maybe SiteVerificationWebResourceGettokenRequestSite)
svwrgrSite
  = lens _svwrgrSite (\ s a -> s{_svwrgrSite = a})

-- | The verification method that will be used to verify this site. For
-- sites, \'FILE\' or \'META\' methods may be used. For domains, only
-- \'DNS\' may be used.
svwrgrVerificationMethod :: Lens' SiteVerificationWebResourceGettokenRequest (Maybe Text)
svwrgrVerificationMethod
  = lens _svwrgrVerificationMethod
      (\ s a -> s{_svwrgrVerificationMethod = a})

instance FromJSON
         SiteVerificationWebResourceGettokenRequest where
        parseJSON
          = withObject
              "SiteVerificationWebResourceGettokenRequest"
              (\ o ->
                 SiteVerificationWebResourceGettokenRequest <$>
                   (o .:? "site") <*> (o .:? "verificationMethod"))

instance ToJSON
         SiteVerificationWebResourceGettokenRequest where
        toJSON SiteVerificationWebResourceGettokenRequest{..}
          = object
              (catMaybes
                 [("site" .=) <$> _svwrgrSite,
                  ("verificationMethod" .=) <$>
                    _svwrgrVerificationMethod])

--
-- /See:/ 'siteVerificationWebResourceResource' smart constructor.
data SiteVerificationWebResourceResource = SiteVerificationWebResourceResource
    { _svwrrOwners :: !(Maybe [Text])
    , _svwrrId     :: !(Maybe Text)
    , _svwrrSite   :: !(Maybe SiteVerificationWebResourceResourceSite)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SiteVerificationWebResourceResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svwrrOwners'
--
-- * 'svwrrId'
--
-- * 'svwrrSite'
siteVerificationWebResourceResource
    :: SiteVerificationWebResourceResource
siteVerificationWebResourceResource =
    SiteVerificationWebResourceResource
    { _svwrrOwners = Nothing
    , _svwrrId = Nothing
    , _svwrrSite = Nothing
    }

-- | The email addresses of all verified owners.
svwrrOwners :: Lens' SiteVerificationWebResourceResource [Text]
svwrrOwners
  = lens _svwrrOwners (\ s a -> s{_svwrrOwners = a}) .
      _Default
      . _Coerce

-- | The string used to identify this site. This value should be used in the
-- \"id\" portion of the REST URL for the Get, Update, and Delete
-- operations.
svwrrId :: Lens' SiteVerificationWebResourceResource (Maybe Text)
svwrrId = lens _svwrrId (\ s a -> s{_svwrrId = a})

-- | The address and type of a site that is verified or will be verified.
svwrrSite :: Lens' SiteVerificationWebResourceResource (Maybe SiteVerificationWebResourceResourceSite)
svwrrSite
  = lens _svwrrSite (\ s a -> s{_svwrrSite = a})

instance FromJSON SiteVerificationWebResourceResource
         where
        parseJSON
          = withObject "SiteVerificationWebResourceResource"
              (\ o ->
                 SiteVerificationWebResourceResource <$>
                   (o .:? "owners" .!= mempty) <*> (o .:? "id") <*>
                     (o .:? "site"))

instance ToJSON SiteVerificationWebResourceResource
         where
        toJSON SiteVerificationWebResourceResource{..}
          = object
              (catMaybes
                 [("owners" .=) <$> _svwrrOwners,
                  ("id" .=) <$> _svwrrId, ("site" .=) <$> _svwrrSite])