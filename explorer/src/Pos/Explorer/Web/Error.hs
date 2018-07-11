-- | Types describing runtime errors related to Explorer

module Pos.Explorer.Web.Error
       ( ExplorerError (..)
       ) where

import           Formatting (bprint, stext, (%))
import qualified Formatting.Buildable
import           Universum

newtype ExplorerError =
    -- | Some internal error.
    Internal Text
    deriving (Show, Generic)

instance Exception ExplorerError

instance Buildable ExplorerError where
    build (Internal msg) = bprint ("Internal explorer error ("%stext%")") msg
