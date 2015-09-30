{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.StorageTransfer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Transfers data from external data sources to a Google Cloud Storage
-- bucket or between Google Cloud Storage buckets.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference>
module Network.Google.StorageTransfer
    (
    -- * API
      StorageTransferAPI
    , storageTransferAPI
    , storageTransferURL

    -- * Service Methods

    -- * REST Resources

    -- ** StoragetransferGetGoogleServiceAccount
    , module StorageTransfer.GetGoogleServiceAccount

    -- ** StoragetransferGoogleServiceAccountsGet
    , module StorageTransfer.GoogleServiceAccounts.Get

    -- ** StoragetransferTransferJobsCreate
    , module StorageTransfer.TransferJobs.Create

    -- ** StoragetransferTransferJobsGet
    , module StorageTransfer.TransferJobs.Get

    -- ** StoragetransferTransferJobsList
    , module StorageTransfer.TransferJobs.List

    -- ** StoragetransferTransferJobsPatch
    , module StorageTransfer.TransferJobs.Patch

    -- ** StoragetransferTransferOperationsCancel
    , module StorageTransfer.TransferOperations.Cancel

    -- ** StoragetransferTransferOperationsDelete
    , module StorageTransfer.TransferOperations.Delete

    -- ** StoragetransferTransferOperationsGet
    , module StorageTransfer.TransferOperations.Get

    -- ** StoragetransferTransferOperationsList
    , module StorageTransfer.TransferOperations.List

    -- ** StoragetransferTransferOperationsPause
    , module StorageTransfer.TransferOperations.Pause

    -- ** StoragetransferTransferOperationsResume
    , module StorageTransfer.TransferOperations.Resume

    -- * Types

    -- ** ErrorSummary
    , ErrorSummary
    , errorSummary
    , esErrorCount
    , esErrorCode
    , esErrorLogEntries

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** PauseTransferOperationRequest
    , PauseTransferOperationRequest
    , pauseTransferOperationRequest

    -- ** GoogleServiceAccount
    , GoogleServiceAccount
    , googleServiceAccount
    , gsaAccountEmail

    -- ** ObjectConditions
    , ObjectConditions
    , objectConditions
    , ocMinTimeElapsedSinceLastModification
    , ocIncludePrefixes
    , ocMaxTimeElapsedSinceLastModification
    , ocExcludePrefixes

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Schedule
    , Schedule
    , schedule
    , sScheduleEndDate
    , sScheduleStartDate
    , sStartTimeOfDay

    -- ** Empty
    , Empty
    , empty

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** UpdateTransferJobRequest
    , UpdateTransferJobRequest
    , updateTransferJobRequest
    , utjrTransferJob
    , utjrProjectId
    , utjrUpdateTransferJobFieldMask

    -- ** TransferCounters
    , TransferCounters
    , transferCounters
    , tcBytesFoundOnlyFromSink
    , tcBytesDeletedFromSink
    , tcObjectsDeletedFromSource
    , tcObjectsFoundFromSource
    , tcBytesFailedToDeleteFromSink
    , tcBytesFromSourceFailed
    , tcBytesCopiedToSink
    , tcBytesFoundFromSource
    , tcBytesDeletedFromSource
    , tcObjectsDeletedFromSink
    , tcObjectsFoundOnlyFromSink
    , tcBytesFromSourceSkippedBySync
    , tcObjectsCopiedToSink
    , tcObjectsFromSourceFailed
    , tcObjectsFailedToDeleteFromSink
    , tcObjectsFromSourceSkippedBySync

    -- ** TransferJob
    , TransferJob
    , transferJob
    , tjCreationTime
    , tjStatus
    , tjSchedule
    , tjDeletionTime
    , tjName
    , tjProjectId
    , tjTransferSpec
    , tjDescription
    , tjLastModificationTime

    -- ** GcsData
    , GcsData
    , gcsData
    , gdBucketName

    -- ** AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdBucketName
    , asdAwsAccessKey

    -- ** HTTPData
    , HTTPData
    , hTTPData
    , httpdListUrl

    -- ** ErrorLogEntry
    , ErrorLogEntry
    , errorLogEntry
    , eleUrl
    , eleErrorDetails

    -- ** TimeOfDay
    , TimeOfDay
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** TransferOptions
    , TransferOptions
    , transferOptions
    , toDeleteObjectsUniqueInSink
    , toDeleteObjectsFromSourceAfterTransfer
    , toOverwriteObjectsAlreadyExistingInSink

    -- ** TransferOperation
    , TransferOperation
    , transferOperation
    , toStatus
    , toCounters
    , toStartTime
    , toTransferJobName
    , toName
    , toEndTime
    , toProjectId
    , toTransferSpec
    , toErrorBreakdowns

    -- ** TransferSpec
    , TransferSpec
    , transferSpec
    , tsGcsDataSource
    , tsObjectConditions
    , tsHttpDataSource
    , tsAwsS3DataSource
    , tsGcsDataSink
    , tsTransferOptions

    -- ** ListTransferJobsResponse
    , ListTransferJobsResponse
    , listTransferJobsResponse
    , ltjrNextPageToken
    , ltjrTransferJobs

    -- ** AwsAccessKey
    , AwsAccessKey
    , awsAccessKey
    , aakSecretAccessKey
    , aakAccessKeyId

    -- ** ResumeTransferOperationRequest
    , ResumeTransferOperationRequest
    , resumeTransferOperationRequest
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.StorageTransfer.GetGoogleServiceAccount
import           Network.Google.Resource.StorageTransfer.GoogleServiceAccounts.Get
import           Network.Google.Resource.StorageTransfer.TransferJobs.Create
import           Network.Google.Resource.StorageTransfer.TransferJobs.Get
import           Network.Google.Resource.StorageTransfer.TransferJobs.List
import           Network.Google.Resource.StorageTransfer.TransferJobs.Patch
import           Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
import           Network.Google.Resource.StorageTransfer.TransferOperations.Delete
import           Network.Google.Resource.StorageTransfer.TransferOperations.Get
import           Network.Google.Resource.StorageTransfer.TransferOperations.List
import           Network.Google.Resource.StorageTransfer.TransferOperations.Pause
import           Network.Google.Resource.StorageTransfer.TransferOperations.Resume
import           Network.Google.StorageTransfer.Types

{- $resources
TODO
-}

type StorageTransferAPI =
     TransferJobs :<|> V1 :<|> TransferOperations :<|>
       GoogleServiceAccounts

storageTransferAPI :: Proxy StorageTransferAPI
storageTransferAPI = Proxy