{-# LANGUAGE RankNTypes #-}

-- | Common functionality related to Misc DB.

module Pos.DB.Misc.Common
       ( miscGetBi
       , miscPutBi
       ) where

import           Universum

import           Pos.Binary.Class (Bi)
import           Pos.DB.Class     (MonadRealDB, getMiscDB)
import           Pos.DB.Functions (rocksGetBi, rocksPutBi)

miscGetBi
    :: forall v m . (MonadRealDB m, Bi v)
    => ByteString -> m (Maybe v)
miscGetBi k = rocksGetBi k =<< getMiscDB

miscPutBi
    :: forall v m . (MonadRealDB m, Bi v)
    => ByteString -> v -> m ()
miscPutBi k v = rocksPutBi k v =<< getMiscDB
