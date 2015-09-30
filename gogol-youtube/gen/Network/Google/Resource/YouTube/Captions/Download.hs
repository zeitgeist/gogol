{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Captions.Download
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCaptionsDownload@.
module YouTube.Captions.Download
    (
    -- * REST Resource
      CaptionsDownloadAPI

    -- * Creating a Request
    , captionsDownload
    , CaptionsDownload

    -- * Request Lenses
    , cdOnBehalfOf
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdTlang
    , cdOnBehalfOfContentOwner
    , cdKey
    , cdId
    , cdTfmt
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCaptionsDownload@ which the
-- 'CaptionsDownload' request conforms to.
type CaptionsDownloadAPI =
     "captions" :>
       Capture "id" Text :>
         QueryParam "onBehalfOf" Text :>
           QueryParam "tlang" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "tfmt" Text :> Get '[JSON] ()

-- | Downloads a caption track. The caption track is returned in its original
-- format unless the request specifies a value for the tfmt parameter and
-- in its original language unless the request specifies a value for the
-- tlang parameter.
--
-- /See:/ 'captionsDownload' smart constructor.
data CaptionsDownload = CaptionsDownload
    { _cdOnBehalfOf             :: !(Maybe Text)
    , _cdQuotaUser              :: !(Maybe Text)
    , _cdPrettyPrint            :: !Bool
    , _cdUserIp                 :: !(Maybe Text)
    , _cdTlang                  :: !(Maybe Text)
    , _cdOnBehalfOfContentOwner :: !(Maybe Text)
    , _cdKey                    :: !(Maybe Text)
    , _cdId                     :: !Text
    , _cdTfmt                   :: !(Maybe Text)
    , _cdOauthToken             :: !(Maybe Text)
    , _cdFields                 :: !(Maybe Text)
    , _cdAlt                    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionsDownload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdOnBehalfOf'
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdTlang'
--
-- * 'cdOnBehalfOfContentOwner'
--
-- * 'cdKey'
--
-- * 'cdId'
--
-- * 'cdTfmt'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
captionsDownload
    :: Text -- ^ 'id'
    -> CaptionsDownload
captionsDownload pCdId_ =
    CaptionsDownload
    { _cdOnBehalfOf = Nothing
    , _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdTlang = Nothing
    , _cdOnBehalfOfContentOwner = Nothing
    , _cdKey = Nothing
    , _cdId = pCdId_
    , _cdTfmt = Nothing
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = "json"
    }

-- | ID of the Google+ Page for the channel that the request is be on behalf
-- of
cdOnBehalfOf :: Lens' CaptionsDownload' (Maybe Text)
cdOnBehalfOf
  = lens _cdOnBehalfOf (\ s a -> s{_cdOnBehalfOf = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CaptionsDownload' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CaptionsDownload' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CaptionsDownload' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | The tlang parameter specifies that the API response should return a
-- translation of the specified caption track. The parameter value is an
-- ISO 639-1 two-letter language code that identifies the desired caption
-- language. The translation is generated by using machine translation,
-- such as Google Translate.
cdTlang :: Lens' CaptionsDownload' (Maybe Text)
cdTlang = lens _cdTlang (\ s a -> s{_cdTlang = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The actual CMS account that the user authenticates with must be
-- linked to the specified YouTube content owner.
cdOnBehalfOfContentOwner :: Lens' CaptionsDownload' (Maybe Text)
cdOnBehalfOfContentOwner
  = lens _cdOnBehalfOfContentOwner
      (\ s a -> s{_cdOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CaptionsDownload' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The id parameter identifies the caption track that is being retrieved.
-- The value is a caption track ID as identified by the id property in a
-- caption resource.
cdId :: Lens' CaptionsDownload' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | The tfmt parameter specifies that the caption track should be returned
-- in a specific format. If the parameter is not included in the request,
-- the track is returned in its original format.
cdTfmt :: Lens' CaptionsDownload' (Maybe Text)
cdTfmt = lens _cdTfmt (\ s a -> s{_cdTfmt = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CaptionsDownload' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CaptionsDownload' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CaptionsDownload' Text
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CaptionsDownload' where
        type Rs CaptionsDownload' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CaptionsDownload{..}
          = go _cdOnBehalfOf _cdQuotaUser _cdPrettyPrint
              _cdUserIp
              _cdTlang
              _cdOnBehalfOfContentOwner
              _cdKey
              _cdId
              _cdTfmt
              _cdOauthToken
              _cdFields
              _cdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CaptionsDownloadAPI)
                      r
                      u