{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Images.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsImagesDeleteall@.
module Androidpublisher.Edits.Images.Deleteall
    (
    -- * REST Resource
      EditsImagesDeleteallAPI

    -- * Creating a Request
    , editsImagesDeleteall
    , EditsImagesDeleteall

    -- * Request Lenses
    , eidQuotaUser
    , eidPrettyPrint
    , eidPackageName
    , eidUserIp
    , eidImageType
    , eidKey
    , eidLanguage
    , eidOauthToken
    , eidEditId
    , eidFields
    , eidAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsImagesDeleteall@ which the
-- 'EditsImagesDeleteall' request conforms to.
type EditsImagesDeleteallAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" Text :>
                 Delete '[JSON] ImagesDeleteAllResponse

-- | Deletes all images for the specified language and image type.
--
-- /See:/ 'editsImagesDeleteall' smart constructor.
data EditsImagesDeleteall = EditsImagesDeleteall
    { _eidQuotaUser   :: !(Maybe Text)
    , _eidPrettyPrint :: !Bool
    , _eidPackageName :: !Text
    , _eidUserIp      :: !(Maybe Text)
    , _eidImageType   :: !Text
    , _eidKey         :: !(Maybe Text)
    , _eidLanguage    :: !Text
    , _eidOauthToken  :: !(Maybe Text)
    , _eidEditId      :: !Text
    , _eidFields      :: !(Maybe Text)
    , _eidAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidQuotaUser'
--
-- * 'eidPrettyPrint'
--
-- * 'eidPackageName'
--
-- * 'eidUserIp'
--
-- * 'eidImageType'
--
-- * 'eidKey'
--
-- * 'eidLanguage'
--
-- * 'eidOauthToken'
--
-- * 'eidEditId'
--
-- * 'eidFields'
--
-- * 'eidAlt'
editsImagesDeleteall
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesDeleteall
editsImagesDeleteall pEidPackageName_ pEidImageType_ pEidLanguage_ pEidEditId_ =
    EditsImagesDeleteall
    { _eidQuotaUser = Nothing
    , _eidPrettyPrint = True
    , _eidPackageName = pEidPackageName_
    , _eidUserIp = Nothing
    , _eidImageType = pEidImageType_
    , _eidKey = Nothing
    , _eidLanguage = pEidLanguage_
    , _eidOauthToken = Nothing
    , _eidEditId = pEidEditId_
    , _eidFields = Nothing
    , _eidAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eidQuotaUser :: Lens' EditsImagesDeleteall' (Maybe Text)
eidQuotaUser
  = lens _eidQuotaUser (\ s a -> s{_eidQuotaUser = a})

-- | Returns response with indentations and line breaks.
eidPrettyPrint :: Lens' EditsImagesDeleteall' Bool
eidPrettyPrint
  = lens _eidPrettyPrint
      (\ s a -> s{_eidPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eidPackageName :: Lens' EditsImagesDeleteall' Text
eidPackageName
  = lens _eidPackageName
      (\ s a -> s{_eidPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eidUserIp :: Lens' EditsImagesDeleteall' (Maybe Text)
eidUserIp
  = lens _eidUserIp (\ s a -> s{_eidUserIp = a})

eidImageType :: Lens' EditsImagesDeleteall' Text
eidImageType
  = lens _eidImageType (\ s a -> s{_eidImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eidKey :: Lens' EditsImagesDeleteall' (Maybe Text)
eidKey = lens _eidKey (\ s a -> s{_eidKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eidLanguage :: Lens' EditsImagesDeleteall' Text
eidLanguage
  = lens _eidLanguage (\ s a -> s{_eidLanguage = a})

-- | OAuth 2.0 token for the current user.
eidOauthToken :: Lens' EditsImagesDeleteall' (Maybe Text)
eidOauthToken
  = lens _eidOauthToken
      (\ s a -> s{_eidOauthToken = a})

-- | Unique identifier for this edit.
eidEditId :: Lens' EditsImagesDeleteall' Text
eidEditId
  = lens _eidEditId (\ s a -> s{_eidEditId = a})

-- | Selector specifying which fields to include in a partial response.
eidFields :: Lens' EditsImagesDeleteall' (Maybe Text)
eidFields
  = lens _eidFields (\ s a -> s{_eidFields = a})

-- | Data format for the response.
eidAlt :: Lens' EditsImagesDeleteall' Text
eidAlt = lens _eidAlt (\ s a -> s{_eidAlt = a})

instance GoogleRequest EditsImagesDeleteall' where
        type Rs EditsImagesDeleteall' =
             ImagesDeleteAllResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsImagesDeleteall{..}
          = go _eidQuotaUser _eidPrettyPrint _eidPackageName
              _eidUserIp
              _eidImageType
              _eidKey
              _eidLanguage
              _eidOauthToken
              _eidEditId
              _eidFields
              _eidAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesDeleteallAPI)
                      r
                      u