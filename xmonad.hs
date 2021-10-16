import XMonad

myKeys conf@(XConfig {modMask = modKey}) = 
     [ ((modKey, xK_q), spawn "qutebrowser")
     , ((modKey, xK_z), spawn "zathura")
     , ((modKey, xK_t), spawn "terminal")
     ]

def = XConfig
    {
    ,modMask = mod4Mask
    ,keys = myKeys
    }
    main = xmonad $ defaultConfig
    { terminal = "urxvt"
    ,modMask   = mod4Mask
    ,borderWidth = 0
    ,keys = myKeys
    }


-- import XMonad
-- import qualified XMonad.StackSet as W
-- import qualified XMonad.Util.CustomKeys as C
-- import qualified Data.Map as M
-- import XMonad.Actions.SpawnOn
-- import XMonad.Util.EZConfig

-- main :: IO ()
-- main = xmonad $ defaultConfig
--     { borderWidth        = 0
--     , terminal         = "st -e tmux new-session -A"
--     , normalBorderColor  = "#000000"
--     , focusedBorderColor = "#000000"
--     , startupHook = do
--         spawn "st -e tmux new-session -A"
--     }
--     `additionalKeys`
--     [ ((mod1Mask, xK_BackSpace        ), spawn "google-chrome")]
